def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  template = []
  src_index = 0
  
  while src_index < src.count do
  template << "I love " + src[src_index][0] + " and " + src[src_index][1] + " on my pizza"
    src_index += 1
  end
  template
end

def find_greater_pair(src)
  # src will be an array of [ [number1, 1number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  larger_num = []
  src_index = 0
  
  while src_index < src.count do
    larger_num << src[src_index].max
    src_index += 1
  end
  larger_num
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  even_pairs = 0
  src_index = 0
  
  while src_index < src.count do
    curr = src[src_index]
    if curr[0] % 2 == 0 && curr[1] % 2 == 0
      even_pairs += curr[0] + curr[1]
    end
    src_index += 1
  end
  even_pairs
end
