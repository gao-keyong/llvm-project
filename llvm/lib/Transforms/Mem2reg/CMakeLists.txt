add_llvm_library( LLVMOurMem2Reg MODULE BUILDTREE_ONLY
  OurMem2Reg.cpp

  DEPENDS
  intrinsics_gen
  PLUGIN_TOOL
  opt
  )
