require 'movable'
include Game

describe Movable do
  before(:each) do
    @movable = Movable.new
  end

  it "should create object with zero x, y, angle" do
    @movable.x.should eql 0.0
    @movable.y.should eql 0.0
    @movable.angle.should eql 0.0
  end

  it "should be able to accelerate in X" do
    1.upto(10) do |i|
      @movable.angle = 90.0
      @movable.accelerate
      @movable.vel_x.should == i*Movable::ACCELERATION_X
      @movable.vel_a.should == 0
    end
  end

  it "should be able to accelerate in Y" do
    1.upto(10) do |i|
      @movable.accelerate
      @movable.vel_y.should == -i*Movable::ACCELERATION_Y
    end
  end

  it "should be able to accelerate round and round" do
    (-5).upto(5) do |i|
      @movable.accelerate i
    end
    @movable.vel_a.ceil.should == 0
  end

  it "should be able to move" do
      -5.upto 5 do |i|
        @movable.accelerate i
        @movable.move
      end
      @movable.x.should_not == 0.0
      @movable.y.should_not == 0.0
  end
  
end
