# METHODS
- method sometimes called a function is a sequence of steps that we can execute at anytime
- When you call a method, use the format `receiver.method(argument)`
- To the left of the dot is the noun; to the right of the dot is the verb
- Defining and calling methods – when calling method no need for puts
- method definition: assigns a set of instruction that performs a specific operation to a name that can be invoked later

``` ruby
def some_name(arg1, arg2)
  …
end
```

## method names
- They should be in snake case.
- They cannot have special characters.
- They cannot be a keyword.

## Variable scope in methods
-	when def method variable vs local (within def block)
-	def variable outside of block use instances variable @

## Arguments => method's parameters
-	comma separated list of values that are passed into methods
-	don’t need to worry about the scope instead we just need to call the method and pass in the values that it’s going to need.
-	Methods with arguments use parentheses (optional)
- A method that's invoked with zero arguments would have zero parameters
-	Need to use local variable to catch values as they are passed in to the methods

## invoking methods
- Defining a method does not invoke it, i.e., it does not instruct the Ruby interpreter to execute the code inside the method's body
- One invokes custom methods by appending the arguments to the method's name
-	Call the method with a value which will be received by the local variable name and then used inside

``` ruby
def welcome(name)
  puts “Hello #{name}!}
end

welcome(”Mary”)
```

## Arguments default values
-	setting a default value without giving an error
-	make an assignment to the variable inside the argument list

``` ruby
def welcome(name =”World”)
  puts “Hello #{name}!”
end

welcome
```

## Return values
-	puts always return nil
-	all method has a return even if we don’t catch it
-	use puts to catch it and do something else to it
-	implicit return value for the whole method is whatever the last thing was
-	can be explicit about what you want to return, it returns from the method and exits the method at same time(nothing after it will be runned)
-	you can explicitly return the line's result with the `return` keyword
  - When the Ruby interpreter encounters an explicit return statement, it immediately returns the result of that statement. It would be pointless to execute subsequent code because the method's output has already been declared

``` ruby
result = method(..)
puts result
```

-	return in conditional statements - if this is true will exit the method right away if certain conditions are met

``` ruby
def ….
  return … if…
  If ….
    return …
	else
    return ….
  end
end
```

-	return only give single value if need multiple change it into one object (ex: array, hash…)

``` ruby
def add_and_subtract(n1, n2)
  add = n1 + n2
  sub = n1 + n2
    return [add, sub]
end

results = add_substract(2, 2)
puts results[0]
puts results[1]
```

## Helper Methods
- One can assign a method's return value to a variable or use it directly in an expression
- Once you've defined one method, you may also invoke it from the body of another
- The concept of helper methods introduces two principles of software design: Separation of Concerns and the Single Responsibility Principle.
    - Separation of Concerns prescribes separating a program into distinct sections that each address a specific concern.
    - The Single Responsibility Principle prescribes that each section should entirely encapsulate the functionality for which it is responsible.


## Operators are also methods
-	syntactic sugar
 - `8 + 2` is the same as `8.+(2)`
- others
 - `array << 4 	=> 	array.<<(4)`
 - `array[2] 	=> 	array.[](2)`
 - `array[2] = ‘x’ 	=> 	array.[]=(2,’x’)`

# numerical methods
- abs : absolute value
- even?, odd? : check number is even or odd, returns Booleans

type conversion
- floor : round float down
- ceil : round float up
- round : round float to the nearest integer
- to_i : float to integer, round like `floor`
- to_f : integer to float
- to_s : creates string with numbers

convenience methods
- lcm :least common multiple of two numbers is the smallest nonzero number that is a multiple of both
  - 3.lcm(9)
- gcd :greatest common divisor is the largest positive integer that is a divisor of both numbers
  - 9.gcd(3)
