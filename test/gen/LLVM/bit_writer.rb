# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM
  extend FFI::Library
  ffi_lib "LLVM-3.4"
  
  # (Not documented)
  # 
  # @method write_bitcode_to_file(m, path)
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [String] path 
  # @return [Integer] 
  # @scope class
  attach_function :write_bitcode_to_file, :LLVMWriteBitcodeToFile, [:pointer, :string], :int
  
  # Writes a module to an open file descriptor. Returns 0 on success.
  # 
  # @method write_bitcode_to_fd(m, fd, should_close, unbuffered)
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [Integer] fd 
  # @param [Integer] should_close 
  # @param [Integer] unbuffered 
  # @return [Integer] 
  # @scope class
  attach_function :write_bitcode_to_fd, :LLVMWriteBitcodeToFD, [:pointer, :int, :int, :int], :int
  
  # Deprecated for LLVMWriteBitcodeToFD. Writes a module to an open file
  #     descriptor. Returns 0 on success. Closes the Handle.
  # 
  # @method write_bitcode_to_file_handle(m, handle)
  # @param [FFI::Pointer(ModuleRef)] m 
  # @param [Integer] handle 
  # @return [Integer] 
  # @scope class
  attach_function :write_bitcode_to_file_handle, :LLVMWriteBitcodeToFileHandle, [:pointer, :int], :int
  
end
