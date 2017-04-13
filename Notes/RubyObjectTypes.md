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
- compact - Removes nil elements from the array; does not modify the original array.
- delete_at(idx) - Deletes the element at the index specified by the method's argument and returns that element; modifies the original array.
- drop(int) - Returns the remainder of the array after n elements have been taken, where n is the method's argument; does not modify the original array.
- first - Returns the first element of the array.
- flatten - Returns a one-dimensional array; does not modify the original array.
- join(separator) - Combines every element of an array into a string and returns the result; splices the elements together with an optional argument (the separator); does not modify the original array.
- last - Returns the last element of the array.
- max - Returns the largest element of an array.
- min - Returns the smallest element of an array.
- pop - Removes an element from the end of the array and returns the removed element; modifies the original array.
- push(arg) - Adds an element to the end of the array and returns the array; modifies the original array.
rotate(offset) - Rotates the array such that the element at the index its argument specifies becomes the first element of the array; a negative argument rotates in the opposite direction; the default argument is 1; does not modify the original array.
- shift - Removes an element from the front of the array and returns the removed element; modifies the original array.
- sort - Sorts the array alphabetically or numerically and returns the result; does not modify the original array.
- take(int) - Returns the first n elements of the array, where n is the method's argument; does not modify the original array.
- unshift(arg) - Adds an element to the front of the array and returns the array; modifies the original array.
- uniq - Removes duplicate values from the array and returns the result; does not modify the original array.



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
- string interpolation is the insertion of an placeholder expression to be evaluated and string converted when the interpreter created the string  `"#{...} asdkjgs"`

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
- capitalize - Capitalizes the string's first character and lowercases the rest of the string and returns the result; does not modify the original string.
- chars - Returns an array of characters in a string and returns the result; does not modify the original string.
- delete! - A dangerous version of delete, which is not dangerous for strings but is for arrays.
- downcase - Replaces all uppercase letters with their lowercase counterparts and returns the result; does not modify the original string.
- split(delimiter) - Divides a string into an array along the delimiter and returns the result; the default delimiter is ' '; does not modify the original string.
- swapcase - Inverts the case of each character and returns the result; does not modify the original string.
- upcase - Replaces all lowercase letters with their uppercase counterparts and returns the result; does not modify the original string.

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



#### both array and string
- concat(arg) - Concatenates two arrays or two strings and returns the resulting concatenation; modifies the receiver.
- count(arg) - count returns the number of elements equal to its argument; it's also synonymous with length and does not take an argument when the receiver is an array.
- delete(arg) - Deletes the argument from the array or string and returns the deleted value; returns nil if the argument is not in the array or string; modifies array but not string receivers.
- empty? - Returns a boolean value indicating whether the array or string is of length zero.
include?(arg) - Returns a boolean value indicating whether the argument is included in the array or string.
- index(arg) - Returns the first index of the array at which the method's argument occurs; returns nil if the argument is not in the array.
- length - Returns the length of an array or string.
- reverse - Reverses the order of the array or string and returns the result; does not modify its receiver.
- + - Concatenates two strings or two arrays and returns the resulting concatenation; does not modify the left argument.
- << - The shovel operator; equivalent to push for arrays, equivalent to concat for strings; modifies the receiver.
- [](arg) - Accesses and returns one or more elements in an array or string.


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
- can use string, integer, or array as a value or key

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

- using symbol as keys, no need to =>
``` ruby
hash = {apple: "red", banana: "yellow" }

hash{:apple} #=> "red"
```

- add key value pairs after hash is defined
``` ruby
hash['last_last'] = 'Davidson'
```
 - hash block
 hash.each do |key, value| ... end

 - Hashes have a different set of iterators than arrays. They share each, but hashes also have the methods each_key and each_value
 ``` ruby
 # each takes a block that takes two arguments: a key and value
 translations.each {|k, v| puts "#{k}: #{v}"}  

 # each_key and each_value take a block that takes one argument: a key or a value
 translations.each_key {|k| puts k}
 translations.each_value {|v| puts v}
 ```

 - hash has similar methods as arrays
 ``` ruby
 silly_yllis = {
  "stressed"=>"desserts",
  "redrum"=>"murder",
  "god"=>"dog",
  "erehwon"=>"nowhere"
}

silly_yllis.all? {|k, v| k == v.reverse} #=> true
silly_yllis.count {|k, v| k != v.reverse} #=> 0

# map still returns an array
silly_yllis.map {|k, v| k + v} #=> ["stresseddesserts", "redrummurder", "goddog", "erehwonnowhere"]

# select returns a hash
silly_yllis.select {|k, v| k.length < 4} #=> {"god" => "dog"}

#With a hash as the receiver, sort_by returns a nested array of [key, value] arrays in the order specified by its block
to_be_sorted_by_key = {b: 5, a: 10, c: 20}
  to_be_sorted_by_key.sort_by {|k, v| k} #=> [[:a, 10], [:b, 5], [:c, 20]]
```

- An alternative syntax for a declaring a hash is Hash.new. The new method takes an optional argument: the default value of each key. When one tries to access a nonexistent key in a hash with a default value, the return value is that default value. Accessing a nonexistent key, however, does not create a new key-value pair. If one doesn't set a default value, accessing a nonexistent key returns nil
``` ruby
# without a default value
dog_breeds = {"corgi"=>"short and sweet", "labrador"=>"labradorable"}
dog_breeds["Australian cattle dog"] #=> nil

# with a default value
default_cuties = Hash.new("cutie")
default_cuties["vizsla"] #=> "cutie"

# accessing a nonexistent key doesn't alter the hash
default_cuties #=> {}
```

- Setting a default value of 0 is helpful for creating a counter hash, one that counts the number of occurrences of particular elements or types of elements within a collection. Typically each key is an element in the collection and each value is the number of occurrences of that key. Counter hashes allow one to elegantly solve many complex problems. Here's a counter hash in action:
word_counts = Hash.new(0)

``` ruby
# I removed the punctuation to simplify extracting words
walrus_speculations = "If seven maids with seven mops
Swept it for half a year
Do you suppose the Walrus said
That they could get it clear
I doubt it said the Carpenter
And shed a bitter tear"
walrus_speculations.split.each do |word|
  # increment value at that key (which is by default 0)
  # this alters the hash because we use the assignment operator (=)
  word_counts[word.downcase] += 1
end

word_counts #=> {"if"=>1, "seven"=>2, "maids"=>1, "with"=>1, "mops"=>1, "swept"=>1,
            #    "it"=>3, "for"=>1, "half"=>1, "a"=>2, "year"=>1, "do"=>1, "you"=>1,
            #    "suppose"=>1, "the"=>2, "walrus"=>1, "said"=>2, "that"=>1, "they"=>1,
            #    "could"=>1, "get"=>1, "clear"=>1, "i"=>1, "doubt"=>1, "carpenter"=>1,
            #    "and"=>1, "shed"=>1, "bitter"=>1, "tear"=>1}
```

- Counter hashes are especially powerful in combination with sort_by: one can easily sort by the frequency of elements (i.e., the counter hash's values). The method below returns the third-most common element in an array. Imagine how much more difficult this method would be to implement without a counter hash.
``` ruby
def third_most_common(arr)
  counts = Hash.new(0)

  arr.each do |el|
    counts[el] += 1
  end

  frequency_array = counts.sort_by {|k,v| v}

  # remember sort_by returns an array of [k, v] arrays
  # return the first element (the key) from the third array from the end
  frequency_array[-3].first
end

third_most_common([1, 2, 2, 3, 3, 3, 4, 4, 4, 4]) #=> 2
```

####Hash Methods

- has_key?(key) - Returns a boolean indicating whether its argument is a key in the hash.
- has_value?(val) - Returns a boolean indicating whether its argument is a value in the hash.
- include?(key) - Returns a boolean indicating whether its argument is a key in the hash.
- keys - Returns an array of all the keys in its receiver.
- key?(key) - Returns a boolean indicating whether its argument is a key in the hash.
- length - Returns the number of key-value pairs in its receiver.
- to_a - Type converts its receiver hash into a nested array of [key, value] arrays.
- to_h - Type converts a nested array of two-element arrays to a hash.
- values - Returns an array of all the values in its receiver.
- value?(val) - Returns a boolean indicating whether its argument is a value in the hash.

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
- Only false and nil are falsey. All else is truthy.

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
spaceship operators | <=>
 - he spaceship operator is a hybrid between "less than," "equal to," and "greater than." a <=> b returns -1 if a < b, 0 if a == b, and 1 if a > b

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
