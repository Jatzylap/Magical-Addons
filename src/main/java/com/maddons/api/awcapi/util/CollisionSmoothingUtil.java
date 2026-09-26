package com.maddons.api.awcapi.util;

import it.unimi.dsi.fastutil.floats.FloatArrays;
import java.util.List;
import java.util.function.Consumer;
import net.minecraft.util.Mth;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.Shapes.DoubleLineConsumer;
import org.apache.commons.lang3.tuple.Pair;
import org.jetbrains.annotations.Nullable;

public class CollisionSmoothingUtil {
   private static float invSqrt(float x) {
      float xhalf = 0.5F * x;
      int i = Float.floatToIntBits(x);
      i = 1597463007 - (i >> 1);
      x = Float.intBitsToFloat(i);
      return x * (1.5F - xhalf * x * x);
   }

   private static float sampleSdf(
      float[] erx,
      float[] ery,
      float[] erz,
      float[] ecx,
      float[] ecy,
      float[] ecz,
      int count,
      float px,
      float py,
      float pz,
      float pnx,
      float pny,
      float pnz,
      float x,
      float y,
      float z,
      float smoothingRange,
      float invSmoothingRange
   ) {
      float sdfDst = 0.0F;
      float planeDst = pnx * (x - px) + pny * (y - py) + pnz * (z - pz);

      for (int i = 0; i < count; i++) {
         float rsx = x - ecx[i];
         float rsy = y - ecy[i];
         float rsz = z - ecz[i];
         float prx = rsx * erx[i];
         float pry = rsy * ery[i];
         float prz = rsz * erz[i];
         float k1 = invSqrt(prx * prx + pry * pry + prz * prz);
         float ellipsoidDst = Mth.sqrt(rsx * rsx + rsy * rsy + rsz * rsz) * (1.0F - 1.0F * k1);
         float h = Mth.clamp(0.5F - 0.5F * (ellipsoidDst + planeDst) * invSmoothingRange, 0.0F, 1.0F);
         ellipsoidDst = ellipsoidDst + (-planeDst - ellipsoidDst) * h + smoothingRange * h * (1.0F - h);
         if (i == 0) {
            sdfDst = ellipsoidDst;
         } else {
            h = Mth.clamp(0.5F + 0.5F * (ellipsoidDst - sdfDst) * invSmoothingRange, 0.0F, 1.0F);
            sdfDst = ellipsoidDst + (sdfDst - ellipsoidDst) * h - smoothingRange * h * (1.0F - h);
         }
      }

      float h = Mth.clamp(0.5F - 0.5F * (sdfDst + planeDst) * invSmoothingRange, 0.0F, 1.0F);
      return sdfDst + (-planeDst - sdfDst) * h + smoothingRange * h * (1.0F - h);
   }

   @Nullable
   public static Pair<Vec3, Vec3> findClosestPoint(
      Consumer<DoubleLineConsumer> consumer, Vec3 pp, Vec3 pn, float smoothingRange, float boxScale, float dx, int iters, float threshold, Vec3 p
   ) {
      CollisionSmoothingUtil.BoxConsumer boxConsumer = new CollisionSmoothingUtil.BoxConsumer(p, boxScale);
      consumer.accept(boxConsumer);
      return boxConsumer.size == 0
         ? null
         : findClosestPoint(
            boxConsumer.erx,
            boxConsumer.ery,
            boxConsumer.erz,
            boxConsumer.ecx,
            boxConsumer.ecy,
            boxConsumer.ecz,
            boxConsumer.size,
            pp,
            pn,
            smoothingRange,
            boxScale,
            dx,
            iters,
            threshold,
            p
         );
   }

   @Nullable
   public static Pair<Vec3, Vec3> findClosestPoint(
      List<AABB> boxes, Vec3 pp, Vec3 pn, float smoothingRange, float boxScale, float dx, int iters, float threshold, Vec3 p
   ) {
      if (boxes.isEmpty()) {
         return null;
      }

      float[] erx = new float[boxes.size()];
      float[] ery = new float[boxes.size()];
      float[] erz = new float[boxes.size()];
      float[] ecx = new float[boxes.size()];
      float[] ecy = new float[boxes.size()];
      float[] ecz = new float[boxes.size()];
      int i = 0;

      for (AABB box : boxes) {
         erx[i] = 1.0F / ((float)(box.maxX - box.minX) / 2.0F * boxScale);
         ery[i] = 1.0F / ((float)(box.maxY - box.minY) / 2.0F * boxScale);
         erz[i] = 1.0F / ((float)(box.maxZ - box.minZ) / 2.0F * boxScale);
         ecx[i] = (float)((box.minX + box.maxX) / 2.0 - p.x);
         ecy[i] = (float)((box.minY + box.maxY) / 2.0 - p.y);
         ecz[i] = (float)((box.minZ + box.maxZ) / 2.0 - p.z);
         i++;
      }

      return findClosestPoint(erx, ery, erz, ecx, ecy, ecz, boxes.size(), pp, pn, smoothingRange, boxScale, dx, iters, threshold, p);
   }

   @Nullable
   private static Pair<Vec3, Vec3> findClosestPoint(
      float[] erx,
      float[] ery,
      float[] erz,
      float[] ecx,
      float[] ecy,
      float[] ecz,
      int count,
      Vec3 pp,
      Vec3 pn,
      float smoothingRange,
      float boxScale,
      float dx,
      int iters,
      float threshold,
      Vec3 p
   ) {
      float halfThreshold = threshold * 0.5F;
      float plx = (float)(pp.x - p.x);
      float ply = (float)(pp.y - p.y);
      float plz = (float)(pp.z - p.z);
      float pnx = (float)pn.x;
      float pny = (float)pn.y;
      float pnz = (float)pn.z;
      float px = 0.0F;
      float py = 0.0F;
      float pz = 0.0F;
      float invSmoothingRange = 1.0F / smoothingRange;

      for (int j = 0; j < iters; j++) {
         float dst = sampleSdf(erx, ery, erz, ecx, ecy, ecz, count, plx, ply, plz, pnx, pny, pnz, px, py, pz, smoothingRange, invSmoothingRange);
         float fx1 = sampleSdf(erx, ery, erz, ecx, ecy, ecz, count, plx, ply, plz, pnx, pny, pnz, px + dx, py, pz, smoothingRange, invSmoothingRange);
         float fy1 = sampleSdf(erx, ery, erz, ecx, ecy, ecz, count, plx, ply, plz, pnx, pny, pnz, px, py + dx, pz, smoothingRange, invSmoothingRange);
         float fz1 = sampleSdf(erx, ery, erz, ecx, ecy, ecz, count, plx, ply, plz, pnx, pny, pnz, px, py, pz + dx, smoothingRange, invSmoothingRange);
         float gx = dst - fx1;
         float gy = dst - fy1;
         float gz = dst - fz1;
         float m = invSqrt(gx * gx + gy * gy + gz * gz);
         gx *= m;
         gy *= m;
         gz *= m;
         if (Float.isNaN(gx) || Float.isNaN(gy) || Float.isNaN(gz) || Double.isNaN(px) || Double.isNaN(py) || Double.isNaN(pz)) {
            return null;
         }

         float absDst = Math.abs(dst);
         float step = absDst >= halfThreshold ? dst : Math.signum(dst) * halfThreshold;
         px += gx * step;
         py += gy * step;
         pz += gz * step;
         if (absDst < threshold) {
            return Pair.of(new Vec3(p.x + px, p.y + py, p.z + pz), new Vec3(-gx, -gy, -gz).normalize());
         }
      }

      return null;
   }

   private static class BoxConsumer implements DoubleLineConsumer {
      private int capacity = 16;
      private int size = 0;
      private float[] erx = new float[this.capacity];
      private float[] ery = new float[this.capacity];
      private float[] erz = new float[this.capacity];
      private float[] ecx = new float[this.capacity];
      private float[] ecy = new float[this.capacity];
      private float[] ecz = new float[this.capacity];
      private final Vec3 p;
      private final float boxScale;

      private BoxConsumer(Vec3 p, float boxScale) {
         this.p = p;
         this.boxScale = boxScale;
      }

      public void consume(double minX, double minY, double minZ, double maxX, double maxY, double maxZ) {
         if (this.size == this.capacity) {
            this.capacity = (int)Math.max(Math.min((long)this.capacity + (this.capacity >> 1), 2147483639L), this.capacity);
            this.erx = FloatArrays.forceCapacity(this.erx, this.capacity, this.size);
            this.ery = FloatArrays.forceCapacity(this.ery, this.capacity, this.size);
            this.erz = FloatArrays.forceCapacity(this.erz, this.capacity, this.size);
            this.ecx = FloatArrays.forceCapacity(this.ecx, this.capacity, this.size);
            this.ecy = FloatArrays.forceCapacity(this.ecy, this.capacity, this.size);
            this.ecz = FloatArrays.forceCapacity(this.ecz, this.capacity, this.size);
         }

         this.erx[this.size] = 1.0F / ((float)(maxX - minX) / 2.0F * this.boxScale);
         this.ery[this.size] = 1.0F / ((float)(maxY - minY) / 2.0F * this.boxScale);
         this.erz[this.size] = 1.0F / ((float)(maxZ - minZ) / 2.0F * this.boxScale);
         this.ecx[this.size] = (float)((minX + maxX) / 2.0 - this.p.x);
         this.ecy[this.size] = (float)((minY + maxY) / 2.0 - this.p.y);
         this.ecz[this.size] = (float)((minZ + maxZ) / 2.0 - this.p.z);
         this.size++;
      }
   }
}
