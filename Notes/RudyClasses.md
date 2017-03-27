# CLASSES
## Defining and using classes
-	the backbone of object oriented programming because classes defines what an objects is and what it can do
-	group code into discreet well categorized areas
-	defining a class and naming (CamelCase –names are with capital with no underscores)

``` ruby
class Animal
  def make_noise
  “Moo!”
  end
end
```

-	create new object from the class, assign it to a variable (being held by variable) and call on it to run the method in the class

``` ruby
Animal.new
animal = Animal.new
animal.make_noise
```

-	classes are important bc it helps organize code into well categorized areas
-	objects carry around their class’s code, all definitions that we put inside of a class is available
-	classes allows complex behaviors using simple statements

## Instances
-	instances is an object created from a class, an occurrence of our class (instance of a class)
  - Animal.new is the instances in the last example
  - Every time we call on the instances it gives back a new and different instance, a different object

``` ruby
animal 1= Animal.new
animal1.make_noise
animal 2= Animal.new
animal2.make_noise
```

## Attributes
-	attribute use to differentiate between instances
-	a value or attributes that persists inside of an instance that will be stored in a variable and keep them around inside the instance
-	Calling an attribute (instance variable scope) @... =>you do not have access to instance variable outside of an instance! Only inside the class you have access to it even though they were in two different methods

``` ruby
class Animal
  def set_noise
    @noise = ”moo”
	end
  def make_noise
    @noise
  end
end

animal 1= Animal.new
animal1.set_noise
puts animal1.make_noise
```

-	for flexibility

``` ruby
class Animal
  def set_noise(noise)
    @noise = noise
  end

  def make_noise
	  @noise
   end
end

animal1= Animal.new
animal1.set_noise (“moo”)
puts animal1.make_noise

animal2= Animal.new
animal2.set_noise (“quack”)
puts animal2.make_noise
```

## Reader/writer methods aka setter/getter methods

``` ruby
class Animal
  def noise =(noise)		#SETTER default
    @noise = noise
  end

	def noise
	  @noise	           #GETTER default
  end
end

animal1= Animal.new
animal1.noise = “moo”
puts animal1.noise

animal2= Animal.new
animal2.noise = “quack”
puts animal2.noise
```

## Attributes methods aka attr_* methods
-	Simpler way to do reader/writer
-	A methods put into our class, when called it takes a symbol that we provide after it turns it into a method for us
 - `attr_reader :… GETTER default`
 - `attr_writer :… SETTER default`
 - `attr_accessor :…., :…, :….,` creates both reader and writer default method

``` ruby
class Animal
attr_accessor :name
attr_writier :color
attr_reader : legs, :arms

  def setup_limbs
    @legs = 4
    @arms = 0
  end

  def color
  “the color is #{@color}.”
	end
end

animal1= Animal.new
animal1.setup_limbs
animal1.name = “steve”
puts animal1.name
animal1.color = “black”
puts animal1.color
puts animal1.legs
```

## Initialize method
-	when creating instance of a class, we want that instance to do initialization, setting some default values or calling some default methods

``` ruby
class Animal
attr_reader : legs, :arms
  def setup_limbs
    @legs = 4
	  @arms = 0
  end

animal1= Animal.new
animal1.setup_limbs
puts animal1.legs
```

 - Shorthand – set the values automatically

``` ruby
def initialize
  @legs = 4
  @arms = 0
end

animal1= Animal.new
puts animal1.legs
```

## Class methods

## Class attributes

## Class reader/writer methods

## Inheritance

## Subclass overriding
## Accessing the superclass
