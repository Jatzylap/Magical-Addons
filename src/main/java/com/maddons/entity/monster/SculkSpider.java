package com.maddons.entity.monster;

import com.maddons.Maddons;
import com.maddons.api.awcapi.ClimberHelper;
import com.maddons.api.awcapi.entity.ClimberComponent;
import com.maddons.api.awcapi.entity.IAdvancedClimber;
import com.maddons.api.awcapi.entity.movement.ClimberJumpController;
import com.maddons.api.awcapi.entity.movement.ClimberLookController;
import com.maddons.api.awcapi.entity.movement.ClimberMoveController;
import com.maddons.api.awcapi.entity.movement.ClimberPathNavigator;
import com.maddons.tags.MaddonsBlockTags;
import com.maddons.entity.MaddonsEntityTypes;
import com.maddons.entity.ai.sensing.MaddonsSensorTypes;
import com.maddons.entity.goal.BetterLeapAtTargetGoal;

import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

import net.minecraft.world.entity.player.Player;
import net.minecraft.commands.arguments.EntityAnchorArgument.Anchor;
import net.minecraft.core.BlockPos;
import net.minecraft.core.Direction;
import net.minecraft.core.Holder;
import net.minecraft.core.Vec3i;
import net.minecraft.network.syncher.EntityDataAccessor;
import net.minecraft.network.syncher.EntityDataSerializers;
import net.minecraft.network.syncher.SynchedEntityData;
import net.minecraft.core.BlockPos.MutableBlockPos;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.tags.GameEventTags;
import net.minecraft.tags.TagKey;
import net.minecraft.util.RandomSource;
import net.minecraft.util.Unit;
import net.minecraft.util.profiling.Profiler;
import net.minecraft.util.profiling.ProfilerFiller;
import net.minecraft.world.DifficultyInstance;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.effect.MobEffectInstance;
import net.minecraft.world.effect.MobEffectUtil;
import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.AgeableMob;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.EntityAttachment;
import net.minecraft.world.entity.EntityAttachments;
import net.minecraft.world.entity.EntityDimensions;
import net.minecraft.world.entity.EntitySelector;
import net.minecraft.world.entity.EntitySpawnReason;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.EntityTypes;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.Mob;
import net.minecraft.world.entity.MoverType;
import net.minecraft.world.entity.Pose;
import net.minecraft.world.entity.SpawnGroupData;
import net.minecraft.world.entity.ai.Brain;
import net.minecraft.world.entity.ai.attributes.AttributeInstance;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.goal.AvoidEntityGoal;
import net.minecraft.world.entity.ai.goal.FloatGoal;
import net.minecraft.world.entity.ai.goal.MeleeAttackGoal;
import net.minecraft.world.entity.ai.goal.RandomLookAroundGoal;
import net.minecraft.world.entity.ai.goal.WaterAvoidingRandomStrollGoal;
import net.minecraft.world.entity.ai.goal.target.HurtByTargetGoal;
import net.minecraft.world.entity.ai.memory.MemoryModuleType;
import net.minecraft.world.entity.ai.attributes.AttributeSupplier;
import net.minecraft.world.entity.ai.navigation.PathNavigation;
import net.minecraft.world.entity.ai.sensing.SensorType;
import net.minecraft.world.entity.animal.armadillo.Armadillo;
import net.minecraft.world.entity.monster.Enemy;
import net.minecraft.world.entity.monster.Monster;
import net.minecraft.world.entity.monster.warden.AngerLevel;
import net.minecraft.world.entity.monster.warden.AngerManagement;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.ServerLevelAccessor;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.gameevent.DynamicGameEventListener;
import net.minecraft.world.level.gameevent.EntityPositionSource;
import net.minecraft.world.level.gameevent.GameEvent;
import net.minecraft.world.level.gameevent.PositionSource;
import net.minecraft.world.level.gameevent.vibrations.VibrationSystem;
import net.minecraft.world.level.pathfinder.Node;
import net.minecraft.world.level.pathfinder.PathType;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;
import net.minecraft.world.phys.Vec3;

import org.jetbrains.annotations.Contract;
import org.jetbrains.annotations.Nullable;

public class SculkSpider extends AgeableMob implements IAdvancedClimber, VibrationSystem, Enemy
{
	private double lerpXRot;
	private double lerpYRot;
   	private ClimberComponent climberComponent;
	private static final Identifier SPEED_MODIFIER_BABY_ID = Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "baby");
   	private static final AttributeModifier SPEED_MODIFIER_BABY = new AttributeModifier(SPEED_MODIFIER_BABY_ID, 0.1, AttributeModifier.Operation.ADD_MULTIPLIED_BASE);
   	private static final EntityDataAccessor<Integer> CLIENT_ANGER_LEVEL = SynchedEntityData.defineId(SculkSpider.class, EntityDataSerializers.INT);
   	private static final EntityDataAccessor<Byte> DATA_FLAGS_ID = SynchedEntityData.defineId(SculkSpider.class, EntityDataSerializers.BYTE);
   	private static final EntityDimensions BABY_DIMENSIONS = EntityDimensions
      .scalable(0.56F, 0.36F)
	   .withEyeHeight(0.33F)
      .withAttachments(EntityAttachments.builder().attach(EntityAttachment.VEHICLE, 0.0F, 0.1875F, 0.0F));
	private DynamicGameEventListener<VibrationSystem.Listener> dynamicGameEventListener;
   	private VibrationSystem.Data vibrationData;
   	private VibrationSystem.User vibrationUser;
   	private AngerManagement angerManagement = new AngerManagement(this::canTargetEntity, Collections.emptyList());
   	private static final Brain.Provider<SculkSpider> BRAIN_PROVIDER = Brain.provider(
      List.of(MemoryModuleType.NEAREST_VISIBLE_NEMESIS, MemoryModuleType.RECENT_PROJECTILE, MemoryModuleType.TOUCH_COOLDOWN, MemoryModuleType.VIBRATION_COOLDOWN),
      List.of(SensorType.NEAREST_PLAYERS, MaddonsSensorTypes.SCULK_SPIDER_SENSOR),
      SculkSpiderAi::getActivities
   );
   

   	public SculkSpider(EntityType<? extends AgeableMob> entityType, Level level)
	{
		super(entityType, level);
      	this.dynamicGameEventListener = new DynamicGameEventListener<>(new VibrationSystem.Listener(this));
		this.vibrationUser = new SculkSpider.VibrationUser();
		this.vibrationData = new VibrationSystem.Data();
		this.climberComponent = new ClimberComponent(this);
		this.moveControl = new ClimberMoveController<>(this);
		this.lookControl = new ClimberLookController<>(this);
		this.jumpControl = new ClimberJumpController<>(this);
	}

	public static AttributeSupplier.Builder createAttributes()
   {
		return Monster.createMonsterAttributes()
         .add(Attributes.MAX_HEALTH, 80.0F)
         .add(Attributes.MOVEMENT_SPEED, 0.31F)
         .add(Attributes.KNOCKBACK_RESISTANCE, 16.0F)
         .add(Attributes.FOLLOW_RANGE, 16.0F);
	}

	@Override
	public EntityDimensions getDefaultDimensions(final Pose pose) {
		return this.isBaby() ? BABY_DIMENSIONS : super.getDefaultDimensions(pose);
	}

   @Override
   protected PathNavigation createNavigation(Level level)
   {
      ClimberPathNavigator<SculkSpider> navigator = new ClimberPathNavigator<>(this, level, true);
      navigator.setCanFloat(true);
      return navigator;
   }

	public AngerManagement getAngerManagement() {
		return this.angerManagement;
	}

	@Override
	public Vec3 getVehicleAttachmentPoint(final Entity vehicle) {
		return vehicle.getBbWidth() <= this.getBbWidth() ? new Vec3(0.0, 0.3125 * this.getScale(), 0.0) : super.getVehicleAttachmentPoint(vehicle);
	}

   // @Override
   // protected void registerGoals()
   // {
   //    this.goalSelector.addGoal(1, new FloatGoal(this));
   //    this.goalSelector.addGoal(2, new AvoidEntityGoal<>(this, Armadillo.class, 6.0F, (double)1.0F, 1.2, (entity) -> !((Armadillo)entity).isScared()));
	// 	this.goalSelector.addGoal(3, new BetterLeapAtTargetGoal<>(this, 0.4F));
   //    this.goalSelector.addGoal(4, new SculkSpiderAttackGoal(this));
   //    this.goalSelector.addGoal(5, new WaterAvoidingRandomStrollGoal(this, 0.8));
   //    this.goalSelector.addGoal(6, new RandomLookAroundGoal(this));
   //    this.targetSelector.addGoal(1, new HurtByTargetGoal(this).setAlertOthers().setUnseenMemoryTicks(200));
   // }

	@Override
	public void updateDynamicGameEventListener(final BiConsumer<DynamicGameEventListener<?>, ServerLevel> action) {
		if (this.level() instanceof ServerLevel serverLevel) {
			action.accept(this.dynamicGameEventListener, serverLevel);
		}
	}

	@Override
	public boolean canAttack(final LivingEntity target) {
		return this.canTargetEntity(target);
	}

   public ClimberComponent getClimberComponent() {
      return this.climberComponent;
   }

   public Mob asMob() {
      return this;
   }

   public float getMovementSpeed() {
      return (float)this.getAttributeValue(Attributes.MOVEMENT_SPEED);
   }

	private int getActiveAnger() {
		return this.angerManagement.getActiveAnger(this.getTarget());
	}

	private void syncClientAngerLevel() {
		this.entityData.set(CLIENT_ANGER_LEVEL, this.getActiveAnger());
	}

	public AngerLevel getAngerLevel() {
		return AngerLevel.byAnger(this.getActiveAnger());
	}

	public Optional<LivingEntity> getEntityAngryAt() {
		return this.getAngerLevel().isAngry() ? this.angerManagement.getActiveEntity() : Optional.empty();
	}

   public void clearAnger(final Entity entity) {
		this.angerManagement.clearAnger(entity);
	}

   public float getBlockSlipperiness(BlockPos pos) {
      BlockState state = this.level().getBlockState(pos);
      float slipperiness = state.getBlock().getFriction() * 0.91F;
      if (state.is(MaddonsBlockTags.NON_CLIMBABLE)) {
         slipperiness = 1.0F - (1.0F - slipperiness) * 0.25F;
      }

      return slipperiness;
   }

   public boolean canClimbOnBlock(BlockState state, BlockPos pos) {
      return !state.is(MaddonsBlockTags.NON_CLIMBABLE);
   }

   public void setLerpYRot(Float yRot) {
      this.lerpYRot = yRot != null ? yRot.doubleValue() : 0.0;
   }

   public void setLerpXRot(Float xRot) {
      this.lerpXRot = xRot != null ? xRot.doubleValue() : 0.0;
   }

   public void setLerpYHeadRot(Float yHeadRot) {
      this.lerpYHeadRot = yHeadRot != null ? yHeadRot.doubleValue() : 0.0;
   }

   public void setLerpHeadSteps(int steps) {
      this.lerpHeadSteps = steps;
   }

   public Direction getGroundSide() {
      return this.getClimberComponent().getGroundSide();
   }

   public void onPathingObstructed(Direction facing) {
   }

   public int getMaxStuckCheckTicks() {
      return 40;
   }

   public float getBridgePathingMalus(Mob entity, BlockPos pos, @Nullable Node fallPathPoint) {
      return -1.0F;
   }

   public float getPathingMalus(BlockGetter cache, Mob entity, PathType nodeType, BlockPos pos, Vec3i direction, Predicate<Direction> sides) {
      if (direction.getY() != 0) {
         boolean hasClimbableNeighbor = false;
         MutableBlockPos offsetPos = new MutableBlockPos();

         for (Direction offset : Direction.values()) {
            if (sides.test(offset)) {
               offsetPos.set(pos.getX() + offset.getStepX(), pos.getY() + offset.getStepY(), pos.getZ() + offset.getStepZ());
               BlockState state = cache.getBlockState(offsetPos);
               if (this.canClimbOnBlock(state, offsetPos)) {
                  hasClimbableNeighbor = true;
                  break;
               }
            }
         }

         if (!hasClimbableNeighbor) {
            return -1.0F;
         }
      }

      return entity.getPathfindingMalus(nodeType);
   }

   public void pathFinderCleanup() {
   }

   // Jump when stuck in water against a block (as opposed to doing nothing when false)
   public boolean onClimbable() {
      return true;
   }

   public boolean shouldTrackPathingTargets() {
      return false;
   }

	public void setClimbing(final boolean value) {
		byte flags = this.entityData.get(DATA_FLAGS_ID);
		if (value) {
			flags = (byte)(flags | 1);
		} else {
			flags = (byte)(flags & -2);
		}

		this.entityData.set(DATA_FLAGS_ID, flags);
	}

   @Override
   public void tick()
   {
      if (this.level() instanceof ServerLevel serverLevel) {
         VibrationSystem.Ticker.tick(serverLevel, this.vibrationData, this.vibrationUser);
      }
      super.tick();
      if (!this.level().isClientSide())
	{
		this.setClimbing(this.horizontalCollision);
		AttributeInstance speed = this.getAttribute(Attributes.MOVEMENT_SPEED);
		speed.removeModifier(SPEED_MODIFIER_BABY_ID);
		if (this.isBaby())
         {
			speed.addTransientModifier(SPEED_MODIFIER_BABY);
		}
      }
      ClimberHelper.tickClimber(this);
   }

	@Override
	protected void customServerAiStep(final ServerLevel level)
   {
      ProfilerFiller profiler = Profiler.get();
		profiler.push("sculkSpiderBrain");
      this.getBrain().tick(level, this);
      profiler.pop();
		super.customServerAiStep(level);
		if (this.tickCount % 20 == 0) {
			this.angerManagement.tick(level, this::canTargetEntity);
			this.syncClientAngerLevel();
		}

		SculkSpiderAi.updateActivity(this.getBrain());
	}

   @Override
   public Brain<SculkSpider> getBrain() {
      return (Brain<SculkSpider>)super.getBrain();
	}

	@Override
	protected Brain<SculkSpider> makeBrain(final Brain.Packed packedBrain) {
		return BRAIN_PROVIDER.makeBrain(this, packedBrain);
	}

	@Override
	public boolean dampensVibrations() {
		return true;
	}

	@Override
	protected float getSoundVolume() {
		return 4.0F;
	}

	public void setAttackTarget(final LivingEntity target) {
		this.getBrain().setMemory(MemoryModuleType.ATTACK_TARGET, target);
		this.getBrain().eraseMemory(MemoryModuleType.CANT_REACH_WALK_TARGET_SINCE);
	}

	@Override
	public boolean hurtServer(final ServerLevel level, final DamageSource source, final float damage) {
		boolean wasHurt = super.hurtServer(level, source, damage);
		if (!this.isNoAi() 
         // && !this.isDiggingOrEmerging()
         ) {
			Entity attacker = source.getEntity();
			this.increaseAngerAt(attacker, AngerLevel.ANGRY.getMinimumAnger() + 20);
			if (this.brain.getMemory(MemoryModuleType.ATTACK_TARGET).isEmpty()
				&& attacker instanceof LivingEntity livingAttacker
				&& (source.isDirect() || this.closerThan(livingAttacker, 5.0))) {
				this.setAttackTarget(livingAttacker);
			}
		}

		return wasHurt;
	}

	@Override
	public boolean isPushable() {
		return super.isPushable();
      // && !this.isDiggingOrEmerging();
	}

	@Override
	protected void doPush(final Entity entity) {
		if (!this.isNoAi() && !this.getBrain().hasMemoryValue(MemoryModuleType.TOUCH_COOLDOWN)) {
			this.getBrain().setMemoryWithExpiry(MemoryModuleType.TOUCH_COOLDOWN, Unit.INSTANCE, 20L);
			this.increaseAngerAt(entity);
			SculkSpiderAi.setDisturbanceLocation(this, entity.blockPosition());
		}
		super.doPush(entity);
	}

   @Nullable 
   public SculkSpider getBreedOffspring(ServerLevel level, AgeableMob mob)
   {
      SculkSpider offspring = MaddonsEntityTypes.SCULK_SPIDER.create(level, EntitySpawnReason.JOCKEY);
		if (offspring != null) {
			offspring.setBaby(true);
		}
		return offspring;
   }

   @Override
   public void aiStep()
   {
      ClimberHelper.livingTickClimber(this);
      super.aiStep();
   }

	@Override
	public @Nullable LivingEntity getTarget() {
		return this.getTargetFromBrain();
	}

	public void move(MoverType type, Vec3 movement)
	{
		ClimberHelper.handleMove(this, type, movement, true);
		super.move(type, movement);
		ClimberHelper.handleMove(this, type, movement, false);
	}

   // @Override
   // public BlockPos getOnPos() {
   //    BlockPos pos = super.getOnPos();
   //    Maddons.LOGGER.info("detect %s".formatted(pos));
   //    return ClimberHelper.getAdjustedOnPosition(this, pos);
   // }

	public void travel(Vec3 travelVector)
	{
		if (!ClimberHelper.handleTravel(this, travelVector)) {
			super.travel(travelVector);
		}

		ClimberHelper.postTravel(this, travelVector);
	}

	public void jumpFromGround() {
		if (!ClimberHelper.handleJump(this)) {
			super.jumpFromGround();
		}
	}

	public void increaseAngerAt(final @Nullable Entity entity) {
		this.increaseAngerAt(entity, 35);
	}

	public void increaseAngerAt(final @Nullable Entity entity, final int amount)
	{
		if (!this.isNoAi() && this.canTargetEntity(entity)) {
			boolean maybeSwitchTarget = !(this.getTarget() instanceof Player);
			int newAnger = this.angerManagement.increaseAnger(entity, amount);
			if (entity instanceof Player && maybeSwitchTarget && AngerLevel.byAnger(newAnger).isAngry()) {
				this.getBrain().eraseMemory(MemoryModuleType.ATTACK_TARGET);
			}
		}
	}

	public void lookAt(Anchor anchor, Vec3 target) {
		Vec3 dir = target.subtract(this.position());
		dir = this.getOrientation().getLocal(dir);
		super.lookAt(anchor, this.position().add(dir));
	}

   @Override
	protected void defineSynchedData(final SynchedEntityData.Builder entityData)
   {
      super.defineSynchedData(entityData);
      entityData.define(DATA_FLAGS_ID, (byte)0);
      entityData.define(CLIENT_ANGER_LEVEL, 0);
   }

	@Override
	protected SoundEvent getHurtSound(final DamageSource source) {
		return SoundEvents.SPIDER_HURT;
	}

	@Override
	protected SoundEvent getDeathSound() {
		return SoundEvents.SPIDER_DEATH;
	}

	@Override
	protected void playStepSound(final BlockPos pos, final BlockState blockState) {
		this.playSound(SoundEvents.SPIDER_STEP, 0.15F, 1.0F);
	}

	@Override
	protected void addAdditionalSaveData(ValueOutput output) {
		super.addAdditionalSaveData(output);
			output.store("anger", AngerManagement.codec(this::canTargetEntity), this.angerManagement);
			output.store("listener", VibrationSystem.Data.CODEC, this.vibrationData);
		if (this.climberComponent != null) {
			this.climberComponent.writeToNbt(output);
		}
	}

	@Override
	protected void readAdditionalSaveData(ValueInput input) {
		super.readAdditionalSaveData(input);
		this.angerManagement = input.read("anger", AngerManagement.codec(this::canTargetEntity)).orElseGet(() -> new AngerManagement(this::canTargetEntity, Collections.emptyList()));
			this.syncClientAngerLevel();
			this.vibrationData = input.read("listener", VibrationSystem.Data.CODEC).orElseGet(VibrationSystem.Data::new);
		if (this.climberComponent != null) {
			this.climberComponent.readFromNbt(input);
		}
	}

	// Walk animation when moving vertically
	@Override
	protected boolean omnidirectionalAirMover() {
		return true;
	}

	// Baby sculk spider jockey
	@Nullable
	@Override
	public SpawnGroupData finalizeSpawn(
		final ServerLevelAccessor level, final DifficultyInstance difficulty, final EntitySpawnReason spawnReason, @Nullable SpawnGroupData groupData
	)
	{
		groupData = super.finalizeSpawn(level, difficulty, spawnReason, groupData);
		RandomSource random = level.getRandom();
			if (random.nextInt(8) == 0)
		{
				SculkSpider babyspider = MaddonsEntityTypes.SCULK_SPIDER.create(this.level(), EntitySpawnReason.JOCKEY);
				if (babyspider != null)
			{
				babyspider.setBaby(true);
					babyspider.snapTo(this.getX(), this.getY(), this.getZ(), this.getYRot(), 0.0F);
					babyspider.startRiding(this, false, false);
				}
			}
		return groupData;
	}

	@Override
	public boolean doHurtTarget(final ServerLevel level, final Entity target)
   	{
		level.broadcastEntityEvent(this, (byte)4);
		return super.doHurtTarget(level, target);
	}

//    private static class SculkSpiderAttackGoal extends MeleeAttackGoal
//    {
// 		public SculkSpiderAttackGoal(final SculkSpider mob) {
// 			super(mob, 1.0, true);
// 		}
//    }

	@Contract("null->false")
	public boolean canTargetEntity(final @Nullable Entity entity)
   	{
		return entity instanceof LivingEntity livingEntity
			&& this.level() == entity.level()
			&& EntitySelector.NO_CREATIVE_OR_SPECTATOR.test(entity)
			&& !this.isAlliedTo(entity)
			&& !livingEntity.is(EntityTypes.ARMOR_STAND)
			&& !livingEntity.is(MaddonsEntityTypes.SCULK_SPIDER)
			&& !livingEntity.isInvulnerable()
			&& !livingEntity.isDeadOrDying()
			&& this.level().getWorldBorder().isWithinBounds(livingEntity.getBoundingBox());
	}

	@Override
	public VibrationSystem.Data getVibrationData() {
		return this.vibrationData;
	}

	@Override
	public VibrationSystem.User getVibrationUser() {
		return this.vibrationUser;
	}

   	private class VibrationUser implements VibrationSystem.User {
      private final PositionSource positionSource = new EntityPositionSource(SculkSpider.this, SculkSpider.this.getEyeHeight());

		@Override
		public int getListenerRadius() {
			return 16;
		}

		@Override
		public PositionSource getPositionSource() {
         return this.positionSource;
		}

		@Override
		public TagKey<GameEvent> getListenableEvents() {
			return GameEventTags.WARDEN_CAN_LISTEN;
		}

		@Override
		public boolean canTriggerAvoidVibration() {
			return true;
		}

		@Override
		public boolean canReceiveVibration(final ServerLevel level, final BlockPos pos, final Holder<GameEvent> event, final GameEvent.Context context) {
			return !SculkSpider.this.isNoAi()
					&& !SculkSpider.this.isDeadOrDying()
					&& !SculkSpider.this.getBrain().hasMemoryValue(MemoryModuleType.VIBRATION_COOLDOWN)
					&& level.getWorldBorder().isWithinBounds(pos)
				? !(context.sourceEntity() instanceof LivingEntity livingEntity && !SculkSpider.this.canTargetEntity(livingEntity))
				: false;
		}

		@Override
		public void onReceiveVibration(
			final ServerLevel level,
			final BlockPos pos,
			final Holder<GameEvent> event,
			final @Nullable Entity sourceEntity,
			final @Nullable Entity projectileOwner,
			final float receivingDistance
		) {
			if (!SculkSpider.this.isDeadOrDying()) {
				SculkSpider.this.brain.setMemoryWithExpiry(MemoryModuleType.VIBRATION_COOLDOWN, Unit.INSTANCE, 40L);
				level.broadcastEntityEvent(SculkSpider.this, (byte)61);
				SculkSpider.this.playSound(SoundEvents.WARDEN_TENDRIL_CLICKS, 5.0F, SculkSpider.this.getVoicePitch());
				BlockPos suspiciousPos = pos;
				if (projectileOwner != null) {
					if (SculkSpider.this.closerThan(projectileOwner, 30.0)) {
						if (SculkSpider.this.getBrain().hasMemoryValue(MemoryModuleType.RECENT_PROJECTILE)) {
							if (SculkSpider.this.canTargetEntity(projectileOwner)) {
								suspiciousPos = projectileOwner.blockPosition();
							}

							SculkSpider.this.increaseAngerAt(projectileOwner);
						} else {
							SculkSpider.this.increaseAngerAt(projectileOwner, 10);
						}
					}

					SculkSpider.this.getBrain().setMemoryWithExpiry(MemoryModuleType.RECENT_PROJECTILE, Unit.INSTANCE, 100L);
				} else {
					SculkSpider.this.increaseAngerAt(sourceEntity);
				}

				if (!SculkSpider.this.getAngerLevel().isAngry()) {
					Optional<LivingEntity> activeEntity = SculkSpider.this.angerManagement.getActiveEntity();
					if (projectileOwner != null || activeEntity.isEmpty() || activeEntity.get() == sourceEntity) {
						SculkSpiderAi.setDisturbanceLocation(SculkSpider.this, suspiciousPos);
					}
				}
			}
		}
	}
}
