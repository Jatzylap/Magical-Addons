// package com.maddons.data.generators;

// import java.util.concurrent.CompletableFuture;

// import com.maddons.Maddons;
// import com.maddons.data.resources.MaddonsBiomes;

// import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
// import net.fabricmc.fabric.api.datagen.v1.provider.FabricTagsProvider;
// import net.minecraft.core.HolderLookup;
// import net.minecraft.core.registries.Registries;
// import net.minecraft.resources.Identifier;
// import net.minecraft.tags.TagKey;
// import net.minecraft.world.level.biome.Biome;

// public class MaddonsBiomeTagsData extends FabricTagsProvider<Biome>
// {
//     public static final TagKey<Biome> IS_SKY = TagKey.create(Registries.BIOME, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "is_sky"));

//     public MaddonsBiomeTagsData(FabricPackOutput output, CompletableFuture<HolderLookup.Provider> registriesFuture) {
// 		super(output, Registries.BIOME, registriesFuture);
// 	}

// 	@Override
// 	protected void addTags(HolderLookup.Provider wrapperLookup)
//     {
//         builder(IS_SKY)
//             .add(MaddonsBiomes.SKY_PLAINS)
//             .setReplace(false);
// 	}
// }