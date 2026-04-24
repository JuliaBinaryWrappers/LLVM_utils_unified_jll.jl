# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule LLVM_utils_unified_jll
using Base
using Base: UUID
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("LLVM_utils_unified")
JLLWrappers.@generate_main_file("LLVM_utils_unified", Base.UUID("0def2053-1a45-54bc-bfc1-6427e7aae702"))
end  # module LLVM_utils_unified_jll
