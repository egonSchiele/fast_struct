require File.join(File.dirname(__FILE__), "../lib/fast_struct")

f = FastStruct.new(:a => 1)
f2 = FastStruct.new(:b => 2)

p f.asd
p f2.asd
