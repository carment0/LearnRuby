# control structures
- blocks of code that alter the control flow based on analysis of given parameters

## Conditional Statements
- Ruby permits nested conditional statements

### if, else, elsif
``` ruby
if Boolean
   …
elsif
   …
else
   …
end
```

### Unless
``` ruby
unless Boolean
  …
end
```
OR
``` ruby
if !Boolean
   …
end
```

### Case
``` ruby
case test_value
when value1
   …
when value2
   …
else
   …
end
```

### Ternary operator – for small codes
```ruby
if Boolean
  … code1
else
  … code2
end
```
OR
``` ruby
Boolean ? code1 : code2
```

### Or/or equals – default values/ fallback
``` ruby
if y
   x = y
else
   x = z
end
```
OR
``` ruby
x = y || z
```


``` ruby
unless  x
   x = y
end
```
OR
``` ruby
x || = y
```

### Loops
- How might you introduce a terminating condition to a while loop? This condition must be true at first but would eventually become false, so as to terminate the loop. The most common approach is to assign a counter variable outside of the loop and increment it within the loop
- One can nest loops just as one would conditional statements

``` ruby
loop do
   …
end
```

loops until condition is met

`break if` – terminate the whole loop

`next if` – jump to the next loop

`redo if` – redo this loop

`retry if` – start the whole loop over

### While
- Although a while loop is technically an expression in that it evaluates to a single value, that value is always nil. If the while loop is within the body of a method definition, one can explicitly return a value from the loop (and the method) using the return keyword
- One can terminate the loop without returning from a method using the break keyword
- The next keyword skips the loop ahead to its next iteration

``` ruby
counter = 0

while counter <= 10
  puts "This is iteration number " + counter.to_s + "!"
  counter = counter + 1
end
```

``` ruby
def two_sum_to_zero?(arr)
  i = 0
  while i < arr.length # outer loop
    num_one = arr[i]
    j = i + 1 # offset the inner counter by one so we don't count an element at the same position twice
    while j < arr.length # inner loop
      num_two = arr[j]
      if num_one + num_two == 0
        return true # our work here is done
      end
      j = j + 1
    end
    i = i + 1
  end
  # by now, we've checked every combination of elements
  # if we haven't returned true yet, then no two elements sum to 0
  false
end

puts two_sum_to_zero?([1,-1])
puts two_sum_to_zero?([1,2,3,4])
```

``` ruby
while true
  puts "This is iteration number #{counter.to_s}!"
  counter += 1
  break counter if counter > 10 #the loop's value is the last value of counter
end

counter = 0
while counter < 11
  counter += 1
  next if counter.odd?
  puts "I only print even numbers from 1 to 10, including #{counter.to_s}."
end
```


### Until
``` ruby
until Boolean
   … code1
end
```

### Iterators
- Similar to loop but instead of waiting to take control or break out of loop iterators is going to transverse a fixed set of data
- An iterator is a method that repeats a set of instructions once for each element in its receiver
  - know the start and end point is
  - use a code block once for each item in a set of data
    - for each one `do` a process (loop)

``` ruby
traverse_me.each {|el| puts el}
```

- each - Accepts a block that it invokes once for each element in the receiver collection, passing that element as an argument; returns its receiver.
- each_index - Accepts a block that it invokes once for each element in the receiver collection, passing each index as an argument; returns its receiver.
- each_char - Accepts a block that it invokes once for each character in the receiver string, passing that character as an argument; returns its receiver.
