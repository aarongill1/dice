require 'dice.rb'

describe Dice do
  it 'creates a dice' do
    expect(Dice.new).to be_an_instance_of Dice
  end
  it 'dice can roll' do
    dice = Dice.new
    expect(dice).to respond_to :roll
  end

  it 'dice roll returns a number' do
    dice = Dice.new
    expect(dice.roll).to eq(3)
  end
end
