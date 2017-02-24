# Ruby
- interpreted language
- object oriented
- whitespace independent

Terminal
- command line
- to run a single code line `ruby -e ____`

To locate and run ruby file
- current directory `ls`
- to folder `cd` or back a folder `cd..`
- can type full pathway instead `ruby Desktop/sample_file.rb`

IRB
- command line interface in ruby
- allow us to interact with code in real time
- `irb`, `quit`

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
    - Example `first_variable = 1`
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
- creating new array `array_set = []`
- adding data set in array `array_set = ["a", "b", "c"]`
- to get the return value of a position `array_set[1]` => `"b"`
