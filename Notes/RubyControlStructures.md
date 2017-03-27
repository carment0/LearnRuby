# **Conditionals**
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
``` ruby
while Boolean
   … code1
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
  - know the start and end point is
  - use a code block once for each item in a set of data
    - for each one `do` a process (loop)
