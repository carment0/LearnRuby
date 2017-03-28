# METHODS
- When you call a method, use the format `object.method `
- To the left of the dot is the noun; to the right of the dot is the verb
- Defining and calling methods – when calling method no need for puts

``` ruby
def some_name
  …
end
```

## Variable scope in methods
-	when def method variable vs local (within def block)
-	def variable outside of block use instances variable @

## Arguments
-	comma separated list of values that are passed into methods
-	don’t need to worry about the scope instead we just need to call the method and pass in the values that it’s going to need.
-	Methods with arguments use parentheses (optional)
-	Need to use local variable to catch values as they are passed in to the methods
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
-	return value for the whole method is whatever the last thing was
-	can be explicit about what you want to return, it returns from the method and exits the method at same time(nothing after it will be runned)
-	when we want to return – when we want the result of the processing that the method does
 - `return ….`
-	To call and return to catch it

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
