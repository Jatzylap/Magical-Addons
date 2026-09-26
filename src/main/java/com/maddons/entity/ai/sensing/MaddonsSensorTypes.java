package com.maddons.entity.ai.sensing; 

import java.util.function.Supplier;

import com.maddons.Maddons;

import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.entity.ai.sensing.Sensor;
import net.minecraft.world.entity.ai.sensing.SensorType;


public class MaddonsSensorTypes
{
    public static void initialise() {}

    public static final SensorType<SculkSpiderSensor> SCULK_SPIDER_SENSOR = register("sculk_spider_sensor", SculkSpiderSensor::new);
    
    private static <U extends Sensor<?>> SensorType<U> register(String id, Supplier<U> factory) {
        return (SensorType<U>)Registry.register(BuiltInRegistries.SENSOR_TYPE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, id), new SensorType<>(factory));
    }
}
   