require 'dice.rb'
require 'multiple_dice'

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
  it 'can throw specified number (3) of dice at the same time' do
    dice1 = Dice.new
    dice2 = Dice.new
    dice3 = Dice.new
    multiple_dice = MultipleDice.new(dice1.roll, dice2.roll, dice3.roll)
    expect(multiple_dice.sum).to be_between(3,18)
  end
end
