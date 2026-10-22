package com.maddons.data;

import com.maddons.data.generators.MaddonsBlockTagsData;
import com.maddons.data.generators.MaddonsFluidTagsData;
// import com.maddons.data.generators.MaddonsStructureTagsData;
// import com.maddons.data.generators.MaddonsBiomeTagsData;
import com.maddons.data.generators.MaddonsModelsData;
import com.maddons.data.generators.MaddonsENUSLangData;
import com.maddons.data.generators.MaddonsWorldgenData;
import com.maddons.data.resources.MaddonsConfiguredFeatures;
// import com.maddons.data.resources.MaddonsPlacedFeatures;

import net.fabricmc.fabric.api.datagen.v1.DataGeneratorEntrypoint;
import net.fabricmc.fabric.api.datagen.v1.FabricDataGenerator;
import net.minecraft.core.RegistrySetBuilder;
import net.minecraft.core.registries.Registries;

public class MaddonsDataGen implements DataGeneratorEntrypoint
{
    @Override
	public void onInitializeDataGenerator(FabricDataGenerator fabricDataGenerator)
    {
        FabricDataGenerator.Pack pack = fabricDataGenerator.createPack();
        pack.addProvider(MaddonsBlockTagsData::new);
        pack.addProvider(MaddonsFluidTagsData::new);
        // pack.addProvider(MaddonsStructureTagsData::new);
        // pack.addProvider(MaddonsBiomeTagsData::new);
        pack.addProvider(MaddonsENUSLangData::new);
        pack.addProvider(MaddonsModelsData::new);
        pack.addProvider(MaddonsWorldgenData::new);
    }

    @Override
    public void buildRegistry(RegistrySetBuilder registryBuilder)
    {
        registryBuilder.add(Registries.CONFIGURED_FEATURE, MaddonsConfiguredFeatures::configure);
        // registryBuilder.add(Registries.PLACED_FEATURE, MaddonsPlacedFeatures::configure);
    }
}