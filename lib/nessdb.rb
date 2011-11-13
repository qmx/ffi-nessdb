require "nessdb/version"
require 'nessdb/lib'
require 'nessdb/connection'

module NessDB
  def connect
    NessDB::Connection.new
  end
  module_function :connect
end
