require 'dice.rb'

describe Dice do
  it 'creates a dice' do
    expect(Dice.new).to be_an_instance_of Dice
  end
  it 'dice can roll' do
    dice = Dice.new
    expect(dice).to respond_to :roll
  end
  it 'dice roll returns a random number between 1 and 6' do
    dice = Dice.new
    expect(dice.roll).to be_between(1,6)
  end
end
