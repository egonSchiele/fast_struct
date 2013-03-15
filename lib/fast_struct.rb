class FastStruct
  def initialize hash={}
    @hash = {}
    hash.each do |_k, v|
      set(_k, v)
    end
  end

  def method_missing k, v=nil
    k_str = k.to_s
    if k_str[-1].chr == "="
      @hash[k_str[0, k_str.size - 1].to_sym] = v
    end
    return @hash[k]
  end

  def to_hash
    @hash
  end

  def to_h
    to_hash
  end

  def [](k)
    self.send(k)
  end

  def []=(k, v)
    set(k, v)
  end

  def set(_k, v)
    k = _k.is_a?(Symbol) ? _k : _k.intern
    if v.is_a? Hash
      v = FastStruct.new(v)
    end
    @hash[k] = v
    v
  end

  def delete_field k
    @hash.delete k
  end
end
