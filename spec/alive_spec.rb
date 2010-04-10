require 'rubygems'
require 'gosu'
require 'alive'
include Game

describe Alive do
  
  before(:each) do
    @window = Gosu::Window.new 10, 10, false
  end

  it "should have some hp when created" do
    hp = rand(100)
    unit = Alive.new(hp, @window, 'images/stub.png')
    unit.hp.should eql hp
  end

  it "should be able to heal for some amount of hp" do
    unit = Alive.new(50, @window, 'images/stub.png')
    unit.heal 20
    unit.hp.should eql 70
    unit.heal 100
    unit.hp.should eql 100
  end

  it "can be damaged" do
    unit = Alive.new(50, @window, 'images/stub.png')
    unit.damage 30
    unit.hp.should eql 20
    unit.damage 100
    unit.hp.should eql 0
  end

  it "should be able to say weather hp is full" do
    unit = Alive.new(50, @window, 'images/stub.png')
    unit.full_hp?.should eql false
    unit.heal 100
    unit.full_hp?.should eql true
  end

end

