module NessDB
  class Connection
    BUFFER_SIZE = 1024 * 1024 * 2
    ASYNC = 0
    def initialize(buffer_size = BUFFER_SIZE, async = ASYNC)
      NessDB::Lib.db_init(buffer_size, async)
    end

    def [](key)
      NessDB::Lib.db_get(key)
    end

    def []=(key, value)
      NessDB::Lib.db_add(key.to_s, value.to_s)
    end

    def exists?(key)
      NessDB::Lib.db_exists(key)
    end

    def remove(key)
      NessDB::Lib.db_remove(key)
    end

    def close
      NessDB::Lib.db_destroy
    end
  end
end
