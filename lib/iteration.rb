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
  result = []

  i_counter = 0
  while i_counter < src.length do #src is array_1
    toppings_pair = src[i_counter] #makes toppings_pair refer to array_1[0], so the first pair of toppings
    result << "I love #{toppings_pair[0]} and #{toppings_pair[1]} on my pizza" #notice how just index 0 and 1 are needed instead of having to do array_1[0][0] and [0][1]
    i_counter += 1 #increases the counter so the method moves on to the next pair of toppings
  end
  result #returns the result array. 
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  #[[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]
  result = []
  i = 0

  while i < src.length do
    result << (src[i][0] > src[i][1] ? src[i][0] : src[i][1]) 
    #if a < b, then print a, else print b
    i+= 1
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
  i = 0

  while i < src.length do
    if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0) #checks if both numbers are even by using modulo
      total += (src[i][0] + src[i][1]) #if they are, increase total by the pair
    end
    i += 1 #increase counter by 1
  end
  total #returns the total
end
