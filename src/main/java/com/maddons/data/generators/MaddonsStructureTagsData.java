// package com.maddons.data.generators;

// import java.util.concurrent.CompletableFuture;

// import com.maddons.Maddons;
// import com.maddons.data.resources.MaddonsStructures;

// import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
// import net.minecraft.data.PackOutput;
// import net.minecraft.core.HolderLookup;
// import net.minecraft.core.registries.Registries;
// import net.minecraft.resources.Identifier;
// import net.minecraft.tags.TagKey;
// import net.minecraft.world.level.block.Block;
// import net.minecraft.world.level.levelgen.structure.Structure;
// import net.fabricmc.fabric.api.datagen.v1.provider.FabricTagsProvider;

// public class MaddonsStructureTagsData extends FabricTagsProvider<Structure>
// {
//     public static final TagKey<Structure> WITCHDOCTOR_HUTS = TagKey.create(Registries.STRUCTURE, Identifier.fromNamespaceAndPath(Maddons.MOD_ID, "witchdoctor_huts"));

//    public MaddonsStructureTagsData(FabricPackOutput output, final CompletableFuture<HolderLookup.Provider> lookupProvider) {
//       super(output, Registries.STRUCTURE, lookupProvider);
//    }

// 	@Override
// 	protected void addTags(HolderLookup.Provider wrapperLookup)
//     {
//         builder(WITCHDOCTOR_HUTS)
//             .add(MaddonsStructures.WITCHDOCTOR_HUT_PLAINS)
//             .add(MaddonsStructures.WITCHDOCTOR_HUT_SNOWY)
//             .add(MaddonsStructures.DESERT)
//             .add(MaddonsStructures.WITCHDOCTOR_HUT_SAVANNA)
//             .add(MaddonsStructures.WITCHDOCTOR_HUT_TAIGA)
//             .setReplace(false); 
//     }
// }