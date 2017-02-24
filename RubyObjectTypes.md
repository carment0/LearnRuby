## Ruby object types
What are objects?
- object is fundamental building block in ruby
- it can be things or abstract
- objects are instances of a class
  - Example: Each student is an object or an instance of the class student. All unique but they have something in common

Variable (not objects)
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

Integers
- integer belong into subclasses
- difference is how it is stored in memory
    - fixnum vs bignum

Floats
- decimal numbers
- for precision

Strings
- sequence of characters strung together
  - operations can be used in strings
- single or double quotes
  - double quotes allows extra evolutions:
    - `\t`, `\n`, `#{___}`
    - to escape `/`

Array
- ordered integer indexed collection of objects
- any objects can go into arrays
- array index start at 0
- creating new array
``` ruby
array_set = []
```
- adding data set in array
``` ruby
array_set = ["a", "b", "c"]
```
- to get the return value of a position
``` ruby
array_set[1]
=> "b"
```
- to change array data
```ruby
array_set[0] = "d"
=> ["d", "b", "c"]
```
- appending data into an array
``` ruby
array_set << "e"
=> ["d", "b", "c", "e"]
```

Hashes
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

Symbols
- a label to identify a piece of data
- stored in memory one time and ruby will go back to use this labeling
- not a variable
- saves memory especially for hashes
``` ruby
hashes_set = {:first_name => "Kevin", :last_name => "lowercase"}
```

Booleans
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

Ranges
- inclusive range includes last number `1..10`
- exclusive rang excludes last number `1...10`
- splat operator gives all the numbers in range `num_ranges = *[___]`
- ranges can be used for alphabet `"a".."f"`

Constants
- similar to variables, point to objects
-	use all capital letters
