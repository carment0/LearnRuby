# Ruby object types
## What are objects?
- object is fundamental building block in ruby
- it can be things or abstract
- objects are instances of a class
  - Example: Each student is an object or an instance of the class student. All unique but they have something in common

## Variable (not objects)
- allow us to easily reference objects
- will be undefined or act like an object
- needs to assign a value before using
- needs to be in lowercase, underscore when needed
``` ruby
first_variable = 1
```
- scope indictors
    - let's ruby know where it should be available and if we can have access to the variable inside different structures

|Scope|Example|
|-----|------|
|global|`$variable`|
|class|`@@variable`|
|instance|`@variable`|
|local|`variable`|
|block|`variable`|

## Data structures
- A data structure is a format for organizing and storing data.

### Strings
- sequence of characters strung together
  - operations can be used in strings
- single or double quotes
  - double quotes allows extra evolutions:
    - `\t`, `\n`, `#{___}`
    - to escape `/`

### Array
- ordered integer indexed collection of objects
- one declares an array with square brackets `array_set = []`
- an array starts with zero index
- One can store items in an array by separating them with commas and enclosing them in square brackets
  - Any object (strings, numbers, booleans, etc.) or combination of objects (including other arrays) can be stored in an array
  - arrays can have heterogeneous arrays (those with different data types inside them)
  - An array that includes another array is called a nested or two-dimensional array

- One can access individual items in an array by appending to the array another set of square brackets enclosing the desired index
  - One can also access array elements using negative indices. The last element of the array is at the -1 index, the penultimate is at -2, etc. With negative indices, you essentially start at the end of the array and work your way backward.
  - One can access multiple elements in an array by using ranges instead of single indices. Doing so returns another array.
  - to get the return value of a position
``` ruby
got_characters = ["Robb", "Sansa", "Arya", "Bran", "Rickon"]

got_characters[0..2]
=> ["Robb", "Sansa", "Arya"]

got_characters[0...-1]
=> ["Robb", "Sansa", "Arya", "Bran"]
```

adding and assigning arrays
- adding data set in array
``` ruby
blasphemous_characters = ["Robb", "Sansa", "Arya", "Bran", "Rickon"]
blasphemous_characters[0] = "Rick"

blasphemous_characters
=> ["Rick", "Sansa", "Arya", "Bran", "Rickon"]

# this is called multiple assignment
blasphemous_characters[3..-1] = "Morty", "Snuffles"

blasphemous_characters
=> ["Rick", "Sansa", "Arya", "Morty", "Snuffles"]

# assign elements to valueless array indices
blasphemous_characters = ["Robb", "Sansa", "Arya", "Bran", "Rickon"]
blasphemous_characters[blasphemous_characters.length] = "Morty"

blasphemous_characters
=> ["Robb", "Sansa", "Arya", "Bran", "Rickon", "Morty"]

# The Ruby interpreter fills in the empty indices with nil
blasphemous_characters[8] = "Rick"
blasphemous_characters
=> ["Robb", "Sansa", "Arya", "Bran", "Rickon", "Morty", nil, nil, "Rick"]
```

- appending data into an array
``` ruby
array_set << "e"
=> ["d", "b", "c", "e"]
```

#### array method
- .first
- .last

## Integers
- integer belong into subclasses
- difference is how it is stored in memory
    - fixnum vs bignum

## Floats
- decimal numbers
- for precision


## Hashes
- unordered object indexed collection of object or key value pairs
- array is used when order matters, hashes used when labeling matters
- creating new hashes
```ruby
hashes = {}
```
- adding key value pairs in hashes
```ruby
hashes_set = {"first_name" => "Kevin", "last_name" => "Lee"}
```
- using the key to find value
``` ruby
hashes_set["first_name"]
=> "Kevin"
```
- using value to find key
``` ruby
heshes_set.index["Kevin"]
=> "first_name"
```

## Symbols
- a label to identify a piece of data
- stored in memory one time and ruby will go back to use this labeling
- not a variable
- saves memory especially for hashes
``` ruby
hashes_set = {:first_name => "Kevin", :last_name => "lowercase"}
```

## Booleans
- true/false
- comparison and logic operators

|Comparison|Booleans|
|---|---|
|equal|`==`|
|less than|`<`|
|greater than|`>`|
|less than or equal to|`<=`|
|greater than or equal to|`>=`|
|not|`!`|
|not equal|`!=`
|and|`&&`|
|or|`||`|

## Ranges
- inclusive range includes last number `1..10`
- exclusive rang excludes last number `1...10`
- splat operator gives all the numbers in range `num_ranges = *[___]`
- ranges can be used for alphabet `"a".."f"`
  - to convert back to array
``` ruby
("a"..."d").to_a
=> ["a","b","c"]
```

## Constants
- similar to variables, point to objects
-	use all capital letters
