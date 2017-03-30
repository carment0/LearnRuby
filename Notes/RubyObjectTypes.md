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

### Array
- ordered integer indexed collection of objects
- one declares an array with square brackets `array_set = []`
- an array starts with zero index
- One can store items in an array by separating them with commas and enclosing them in square brackets
  - Any object (strings, numbers, booleans, etc.) or combination of objects (including other arrays) can be stored in an array
  - arrays can have heterogeneous arrays (those with different data types inside them)
  - An array that includes another array is called a nested or two-dimensional array
    - to access nested arrays
    ``` ruby
    cowboy_bebop_characters = ["Spike Spiegel", "Jet Black", "Faye Valentine", ["Ed", "Ein"]]

    cowboy_bebop_characters[4..-1][0]
    =>"Ed"
    ```

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

- adding and assigning arrays
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

- array Concatenation
  - two ways to concatenate arrays
    - The .concat method : it modifies the original array
      ``` ruby
      potpourri = [false, "Snuffles", nil]
      potpourri.concat(["rick", 3])
      => [false, "Snuffles", nil, "rick", 3]

      # concat modifies the original array
      potpourri
      => [false, "Snuffles", nil, "rick", 3]
```
    - addition operator `+` : does not modify the arrays to its left or right
    - when you reassign the variable for the left array, you can concatenate some value

    ``` ruby
    potpourri = [false, "Snuffles", nil]
    potpourri + ["rick", 3]
    => [false, "Snuffles", nil, "rick", 3]
    # + does not modify the array
    potpourri
    => [false, "Snuffles", nil]

    # variable reassignment
    potpourri = potpourri + ["rick", 3]
    potpourri
    => [false, "Snuffles", nil, "rick", 3]
    ```

#### array method
- .first
- .last
- .push : add element at end of array, takes an argument (the element to be added) and returns the modified array
  - `<< `shovel operator similar to push, does not concatenate. Shoveling one array into another creates a nested array
- .pop : removes an element to the end of array, takes no argument and returns the modified array with the element removed
- .unshift : add element at front of array, takes an argument (the element to be added) and returns the modified array
- .shift : removes an element to the front of array, takes no argument and returns the modified array with the element removed
- .join : converts an array to a string. Join takes an optional argument: the separator. The separator is a string that the method splices between every element in the joined array
- .length : returns the number of elements in the array
- .sort : sort has a counterpart that modifies the original array: sort!. A bang (!) typically denotes methods that modify their receiver so-called "dangerous" methods
- .reverse : has dangerous" methods
- .include? :returns a boolean value indicating whether its argument is included in the array

### Strings
- sequence of characters strung together
  - operations can be used in strings
- single or double quotes
  - double quotes allows extra evolutions:
    - `\t`, `\n`, `#{___}`
    - to escape `/`
- Like arrays, strings use the bracket method for access.
- Each character corresponds to an index.
- Strings are zero-indexed like arrays.
- The only difference between array access and string access is that the first and last methods are unavailable to strings.

``` ruby
words_to_the_third = "Words, words, words."
words_to_the_third[0] #=> "W"
words_to_the_third[-1] #=> "."
words_to_the_third[2..10] #=> "rds, word"
words_to_the_third[2..-1] #=> "rds, words, words."
words_to_the_third[2..(words_to_the_third.length - 1)] #=> "rds, words, words."
words_to_the_third[99] #=> nil

scary_word = "palindromic"
scary_word[0] = "a"
scary_word #=> "aalindromic"
scary_word[1..6] = "ibohph"
scary_word[-3..-1] = "bia"
scary_word #=> "aibohphobia"
```
- concatenating strings is similar to arrays. The only difference is that the shovel operator (<<) also concatenates strings
  - While shoveling one array into another causes nestedness, strings cannot be nested; << therefore merely concatenates strings
  ``` ruby
  # concatenation with + does not modify the original array
broken_half_one = "we belong"
broken_half_two = "together"
broken_half_one + " " + broken_half_two #=> "we belong together"
broken_half_one #=> "we belong"

# use the assignment operator to modify broken_half_one
broken_half_one = broken_half_one + " "
broken_half_one = broken_half_one + broken_half_two
broken_half_one #=> "we belong together"

# concatenation with concat or << modifies the original array
broken_half_one = "we belong"
broken_half_two = "together"
broken_half_one.concat(" ")
broken_half_one #=> "we belong "
broken_half_one << "together"
broken_half_one #=> "we belong together"
```

- multiply strings using the * operator
``` ruby
"echo" * 4 #=> "echoechoechoecho"
```

#### string method
- .push : add character at end of string, takes an argument (the element to be added) and returns the modified string
  - `<< `shovel operator similar to push, DOES concatenate.
- .pop : removes an character to the end of string, takes no argument and returns the modified string with the character removed
- .unshift : add character at front of string, takes an argument (the character to be added) and returns the modified string
- .shift : removes an character to the front of string, takes no argument and returns the modified string with the character removed
- .join : Join takes an optional argument: the separator to joined string
- .length : returns the number of character in the string
- .sort : sort has a counterpart that modifies the original string: sort!. A bang (!) typically denotes methods that modify their receiver so-called "dangerous" methods
- length : returns the number of characters in a string;
- reverse : reverses the order of the string and returns the result (it does not modify its receiver), do not modify the original string but have dangerous versions
- include? : returns a boolean (true or false) indicating whether its argument is included in the string.
- .downcase : replaces all lowercase case letters, do not modify the original string but have dangerous versions
- . upcase : replaces all to uppercase letters, do not modify the original string but have dangerous versions
- .split : divides a string into an array, takes an optional argument: the delimiter. The delimiter is a string along which split divides the receiver string. Whatever string you use as the delimiter will be omitted from the returned array. By default, the delimiter is an empty space (' '). The split method does not modify the original string.

``` ruby
proposition_one_point_two = "The world divides into facts."
proposition_one_point_two.split #=> ["The", "world", "divides",
proposition_one_point_two.split('d') #=> ["The worl", " ", "ivi", "es into facts."]
proposition_one_point_two.split('')  #=>["T", "h", "e", " ", "w", "o", "r", "l",
                                     #    "d", " ", "d", "i", "v", "i", "d", "e",
                                     #    "s", " ", "i", "n", "t", "o", " ", "f",
                                     #    "a", "c", "t", "s", "."]

# the original string is not modified
proposition_one_point_two #=> "The world divides into facts."
```

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
- Ruby also permits string comparison (alphabetically)

comparison operator : can check for equality across data types; Arrays can only be compared for equality
|equal|`==`|
|less than|`<`|
|greater than|`>`|
|less than or equal to|`<=`|
|greater than or equal to|`>=`|
|not equal|`!=`
logical operators
|and|`&&`|
|or|`||`|
|not|`!`|

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
