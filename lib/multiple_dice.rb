class MultipleDice

 def initialize(*dice)
 @dice_array = []
  dice.each do |x|
  @dice_array << x
 end
end

def sum
  result = 0
  @dice_array.each do |x|
    result += x
end
print "The sum of the dice rolled is #{result}"
return result
end
end
