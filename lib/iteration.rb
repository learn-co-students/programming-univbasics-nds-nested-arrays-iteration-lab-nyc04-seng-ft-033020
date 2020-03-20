def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  #
  # array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]
  array = []
  x = 0 

  while x < src.length do
    food_pair = src[x]
    array << "I love #{food_pair[0]} and #{food_pair[1]} on my pizza"
    x += 1
  end
  array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  #[[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]
  result = []
  x = 0 

  while x < src.length do
    num_pairs = src[x]
    (num_pairs[0] < num_pairs[1]) ? result << num_pairs[1] : result << num_pairs[0]
    x += 1
  end
  result
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0
  x = 0

  while x < src.length do
    num_pair = src[x]
    if (num_pair[0] % 2 == 0 && num_pair[1] % 2 == 0)
      total += (num_pair[0] + num_pair[1]) 
    end
    x += 1
  end
  total
end
