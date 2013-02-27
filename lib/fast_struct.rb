class FastStruct
  def initialize hash={}
    @hash = {}
    hash.each do |_k, v|
      set(_k, v)
    end
  end

  def method_missing _k, v=nil
    return @hash[_k]
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
