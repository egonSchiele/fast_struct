require File.join(File.dirname(__FILE__), "../lib/fast_struct")

describe FastStruct do
 
  it "should work with no arguments" do
    expect {
    s = FastStruct.new
    }.to_not raise_error
  end  

  it "should set attributes through the constructor" do
    s = FastStruct.new(:a => 1)
    s.a.should == 1
  end

  it "should accept strings as keys" do
    s = FastStruct.new('a' => 1)
    s.a.should == 1
  end

  it "should allow hash-type reads" do
    s = FastStruct.new('a' => 1)
    s['a'].should == 1
  end

  it "should allow hash-type writes" do
    s = FastStruct.new
    s['a'] = 1
    s['a'].should == 1
  end  

  it "should allow non hash-type writes" do
    s = FastStruct.new
    s.a = 1
    s.a.should == 1
  end    

  it "should deep-wrap" do
    s = FastStruct.new(:a => {:b => 1})
    s.a.b.should == 1
  end

  it "should deep-wrap dynamically using hash syntax" do
    s = FastStruct.new(:f => 1)
    s[:a] = {}
    s.a[:b] = 1
    s.a.b.should == 1
  end  
end
