require 'ffi'
module NessDB
  module Lib
    extend FFI::Library
    ffi_lib ['nessdb', 'libnessdb.so']
    attach_function :db_init, [:int, :int], :void
    attach_function :db_exists, [:string], :int
    attach_function :db_add, [:string, :string], :int
    attach_function :db_get, [:string], :string
    attach_function :db_remove, [:string], :void
    attach_function :db_destroy, [], :void
  end
end
