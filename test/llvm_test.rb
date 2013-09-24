require "test_utils"

run_test(
  library_name:  "LLVM",
  ffi_lib:       "LLVM-3.4",
  cflags:        `llvm-config --cflags`.split(" ") + ['-std=c99'],
  prefixes:      ["LLVM"],
  blacklist:     ["LLVMGetMDNodeNumOperands", "LLVMGetMDNodeOperand", "EDGetDisassembler",
                  "LLVMInitializeAllTargetInfos", "LLVMInitializeAllTargets", "LLVMInitializeNativeTarget"],
  blocking:      lambda{|f| ["LLVMRunFunction", "LLVMRunFunctionAsMain"].include? f},
  file_mappings: {
    "llvm-c/Analysis.h"          => "analysis.rb",
    "llvm-c/BitReader.h"         => "bit_reader.rb",
    "llvm-c/BitWriter.h"         => "bit_writer.rb",
    "llvm-c/Core.h"              => "core.rb",
    "llvm-c/TargetMachine.h"     => "target_machine.rb",
    "llvm-c/Initialization.h"    => "initialization.rb",
    "llvm-c/Object.h"            => "object.rb",
    "llvm-c/Transforms/IPO.h"    => "transforms/ipo.rb",
    "llvm-c/Transforms/Scalar.h" => "transforms/scalar.rb",
    "llvm-c/Disassembler.h"      => "disassembler.rb",
    "llvm-c/ExecutionEngine.h"   => "execution_engine.rb",
    "llvm-c/Target.h"            => "target.rb",
  }
)
