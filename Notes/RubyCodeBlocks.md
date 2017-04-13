# Code block
- {|el| put el} or do ... end is a block
  - a way of grouping instructions that's denoted by enclosing curly braces ({}) or do and end keywords.
  - The arguments are comma-separated and enclosed in pipes (||). Convention is to use curly braces to denote single-line blocks and do and end to denote multiline one
- The block acts as a pseudo argument. each accepts a block that it invokes once for each element in the receiver collection, passing that element to the block as an argument. When each finishes iterating (when it reaches the end of the collection), it returns its receiver
- One of the principal differences between methods and blocks is that blocks are closures, structures that capture or "close over" variables in the context in which those structures are defined. Closures are like one-way scope gates: a closure can access variables from its enclosing scope, but its enclosing scope does not have access to variables defined within the closure

## enumerables
- A set of methods that traverse or sort collections (ranges, arrays, hashes)

### Enumerable Methods
- all? - Passes each element in its receiver to a given block; returns true if the block never returns a falsey value (otherwise it returns false).
- any? - Passes each element in its receiver to a given block; returns true if the block ever returns a truthy value (otherwise it returns false).
- count - With no arguments: returns the number of elements in its receiver; with one argument: returns the number of elements in its receiver equal to its argument; with a block: returns the number of items in its receiver that, when passed to the block, return a truthy value.
- each_with_index - Calls the given block with two arguments--the item and the item's index--once for each element in the method's receiver.
- map - Returns a new array that's the result of executing its given block once for each element in its receiver.
- none? - Passes each element in its receiver to a given block; returns true if the block never returns a truthy value (otherwise it returns false).
- reduce - Combines all elements of its receiver by applying a binary operation, specified by a block or a symbol that names a method or operator; synonymous with inject.
- With one argument, a symbol that names a binary method or operator (e.g., :+, which takes two operands, or :lcm, which has a receiver and an argument).
- With a block and without an argument. The block has two parameters: an accumulator and the current element.
- With a block and with one argument that's the initial accumulator. The block has two parameters: an accumulator and the current element.
- reject - Returns a collection containing all the elements in its receiver for which the given block returns a falsey value.
- select - Returns a collection containing all the elements in its receiver for which the given block returns a truthy value.
- sort_by - Sorts its receiver by the return values of its elements when they are passed to the given block and returns an array in that order.
- with_index - A chainable method that allows the block given to map or each_char to receive indices as well as receiver elements.

## Collect/map (array, hashes, range)
-	make new array
-	when using puts the return value is always nil

## Sort/sort_by
-	compare two values to sort (by number or alphabet)
-	`value 1 <=> value 2`
 - returns `-1` left, `0` stay, `1` right
-	when sorting hashes treat them as arrays to compare

## Inject(accumulator)
``` ruby
sum = array.inject(starting value) {|memo(whatever store before), n | memo + n}
```
