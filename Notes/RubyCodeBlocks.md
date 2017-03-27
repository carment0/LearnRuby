# Code block
``` ruby
object.method do |local variable used in the loop to keep track of the data in this data set|
  …
end
```
OR
``` ruby
object.method {||…}
```

## Find method
-	`find/detect`		object or nil
-	`find_all/select`		array
-	`any?`			boolean
-	`all?`			boolean
-	`delete_if` 	array *(doesn’t work with range need to use splat to make it into array)*

## Merge (hashes only)
-	with different hashes with same key name
``` ruby
hash.method(hash2) {|key,old,new|…}
  if old < new
    old
  else
 	  new
  end
end
```
OR
``` ruby
hash.method(hash2) {|k, o, n| o < n ? o : n}
```

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
