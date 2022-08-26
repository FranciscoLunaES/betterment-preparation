1. How do we format a string multiple times?
  R:
  A string can be formated multiple times using the specifiers ("%d" for digits, "%f" for floats, etc..) and at the final we have to put all the values in an array.

  "%d %f %s" % [1,2.3, "Hola"]

  There is a simplier way interpolating like this:

  name = "paco"
  age = 24
  "Hi my name is #{name}, I have #{age}"

2. When should you use case vs if elsif else?
  R: 
  
  We should use "if, elsif and else" when we have a few conditions (that doesn't have a lot of posible variations or flows), if there is more than 3 conditions it is a good practice to better use "case", because that statement help us to have more control with a lot of flows.

3. Using best practices, define an if else construct with variable a = (x % 2).even?
  R:
  a = true
  x = 10
  if a == (x % 2).even?
    puts "The number #{a} is even"
  else
    puts "The number #{a} is odd"
  end

4. Exemplify the usage of times, upto and downto.
  R:
  1. 5.times { puts "I am using times"}
  2. 1.upto(10) { |number| puts "I am using upto: #{number}"}
  3. 13.downto(6) { |number| puts "I am using downto: #{number}"}

5. Exemplify the usage of each.
  R:
  [1, "Hi", "each"].each { |data| puts data}

6. What is the difference between each and map?
  Each give us the array we pass to it in the first place, with the modifications of the block. Map returns a new array with the changes that we made in each iteration of the block

7. Exemplify the usage of inject.
  Injection take an array and when the data is passing they are accumulating in this case adding and at the final it inject or add the 2.

  (5..16).inject(2) { |data, value| data + value}

8. How do we define an attribute getter and setter (use two ways)?
  R:
  
  We can use the methods "attr_reader :variable" to use as a getter and "attr_writter" to use as a setter

  or we can do it manually with methods like this:

  def breed(breed)
    @breed = breed
  end

  def print_breed
    puts @breed
  end

  
9. How do we define a block?
  R:
  
  The block are anonymous functions that can be pass to methods as arguments or with yield, it can be difined in two ways:

  With "do end"
  1.   array.each do |x|
        puts "first way"
      end
  Or with "{}"
  2. array.each {|x| puts "second way" }


10. How do we define a lambda? How do we use it?
  R:
    Lambdas help us to encapsulate operations or certain logic as a method but can be more portable.

    lamb = -> { puts "this is a lambda" }

    We can use the lambda in multiple ways
    1. lamb.call
    2. lamb.()
    3. lamb[]
    4. lamb.===

11. How do we define a recursive function properly?
  R:
  
  The recursive function are functions that its principal objective is to act like a loop that is going to run until the "base case" or objective is hitted. The only thing we have to do is to call the same function within itself.

  def recursive_func(number)
    return 1 if number < 2

    number + recursive_func(number - 2)
  end

12. How do we define a proc and call it?
  R:
  The procs are like lambdas they act like a block to make logic more portable.

  We can create a proc like this:

  - my_proc = Proc.new { puts "This is the way to define a proc" }

  We can call it like this:

  - my_proc.call 

13. What is the difference between procs and lambdas?
  R:
  The main differences between procs and lambdas are that the procs have to be instantiated to the class proc "Proc.new" and lambdas only need an arrow "->" or the "lambda" word.

  Another thing is that procs when is in a method and wants to return something, it doesn't return to the variable, it ends the method with its return. In other words they return from the context (method). Lambdas returns normally to the variable.

  Finally procs don't care about the quantity of the arguments that we have, but lambdas if you don't send the exacly quantity of arguments it will raise an exception.