require 'rubygems'
require 'map_object'
require 'gosu'
include Game

describe MapObject do
  
  before(:each) do
    @window = Gosu::Window.new 10, 10, false
    @map = MapObject.new @window, 'images/stub.png'
  end

  after(:each) do
    @window.close
  end

  it "should has [0,0] coordinates when created" do
    [@map.x, @map.y].should eql [0.0, 0.0]
  end

  it "should be able to scroll in all directions" do
    stub
  end

  it "shouldn't scroll outside the screen" do
    stub
  end

end

