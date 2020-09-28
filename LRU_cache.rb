class LRUCache
    def initialize(size)
        @size = size    
        @cache = []
    end

    def count
        @size.length
        # returns number of elements currently in cache
    end

    def add(el)
        @cache
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    private
    attr_reader :cache    # helper methods go here!

  end