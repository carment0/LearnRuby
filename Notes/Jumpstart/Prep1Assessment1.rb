# A "slippery number" has 3 as a factor or has 5 as a factor, but not both. 6 is a slippery, but 30 is not. Define a method that returns a boolean indicating whether its argument is slippery.
def is_slippery?(n)
  if n % 3 == 0 && n % 5 == 0
    return false
  elsif
    n % 3 == 0
    return true
  elsif
    n % 5 == 0
    return true
  else
    return false
  end
end

# Write a method that, given an integer n, returns an array of the first n slippery numbers.
# slippery_numbers(7) => [3, 5, 6, 9, 10, 12, 18]
def slippery_numbers(n)
result = []
i = 1
  while result.length < n
    if i % 5 == 0 || i % 3 == 0
      result << i
    end
  i += 1
  end
  result
end

# Define a method, #e_words(str), that accepts a string as an argument. Your method return the number of words in the string that end with the letter "e".
# e_words("tree") => 1
# e_words("Let be be finale of seem.") => 3
def e_words(str)
  words = str.split(" ")
  i = 0
  count = 0
  while i < words.length
    letter = words[i].split('')
      if letter[-1] == 'e'
        count += 1
      else
        count += 0
      end
    i += 1
  end
  count
end

# The Fibonacci Sequence follows a simple rule: the next number in the sequence is the sum of the previous two. The sequence begins with [0, 1]. One computes the third number by summing the first and  second (0 + 1 == 1), yielding [0, 1, 1], one computes the fourth number by summing the second and the third, yielding [0, 1, 1, 2], and so on.
# Define a method, #fibs, that accepts an integer as an argument. The method should return an array of the first n Fibonacci numbers.
# fibs(1) => [0]
# fibs(6) => [0, 1, 1, 2, 3, 5]
def fibs(n)
array = [0, 1]
i = 0
j = 1
  while array.length < n
    array << array[i] + array[j]
    i += 1
    j += 1
  end
  array
end

$success_count = 0
$failure_count = 0

def deep_dup(arr)
  arr.inject([]) { |acc, el| el.is_a?(Array) ? acc << deep_dup(el) : acc << el }
end

def note_success(returned, invocation, expectation)
  puts "success: #{invocation} => #{expectation}"
  $success_count += 1
end

def note_failure(returned, invocation, expectation)
  puts "failure: #{invocation}: expected #{expectation}, returned #{returned}"
  $failure_count += 1
end

def format_args(args)
  o_args = deep_dup(args)
  o_args.map! do |arg|
    arg = prettify(arg)
    arg.class == Array ? arg.to_s : arg
  end
  o_args.join(', ')
end

def prettify(statement)
  case statement
  when Float
    statement.round(5)
  when String
    "\"#{statement}\""
  when NilClass
    "nil"
  else
    statement
  end
end

def equality_test(returned, invocation, expectation)
  if returned == expectation && returned.class == expectation.class
    note_success(returned, invocation, expectation)
  else
    note_failure(returned, invocation, expectation)
  end
end

def identity_test(returned, invocation, expectation, args)
  if returned.__id__ == args[0].__id__
    equality_test(returned, invocation, expectation)
  else
    puts "failure: #{invocation}: You did not mutate the original array!"
    $failure_count += 1
  end
end

def method_missing(method_name, *args)
  method_name = method_name.to_s
  expectation = args[-1]
  args = args[0...-1]
  if method_name.start_with?("test_")
    tested_method = method_name[5..-1]
    print_test(tested_method, args, expectation)
  else
    method_name = method_name.to_sym
    super
  end
end

def print_test(method_name, args, expectation)
  returned = self.send(method_name, *args)
  returned = prettify(returned)
  expectation = prettify(expectation)
  args_statement = format_args(args)
  invocation = "#{method_name}(#{args_statement})"
  method_name.include?("!") ? identity_test(returned, invocation, expectation, args) : equality_test(returned, invocation, expectation)
  rescue Exception => e
    puts "failure: #{invocation} threw #{e}"
    puts e.backtrace.select {|t| !t.include?("method_missing") && !t.include?("print_test")}
    $failure_count += 1
end

puts "\nis_slippery?:\n" + "*" * 15 + "\n"
test_is_slippery?(6, true)
test_is_slippery?(30, false)
puts "\nslipper_numbers:\n" + "*" * 15 + "\n"
test_slippery_numbers(2, [3, 5])
test_slippery_numbers(0, [])
puts "\ne_words:\n" + "*" * 15 + "\n"
test_e_words("loom", 0)
test_e_words("To be or not to be", 2)
puts "\nfibs:\n" + "*" * 15 + "\n"
test_fibs(2, [0,1])
test_fibs(6, [0,1,1,2,3,5])
puts
puts "TOTAL CORRECT: #{$success_count} / #{$success_count + $failure_count}"
puts "TOTAL FAILURES: #{$failure_count}"
$success_count = 0
$failure_count = 0
