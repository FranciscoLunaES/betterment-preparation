1. Define three ways of declaring and instancing a string. 
 R: 
  1. String.new("Hi mi name is paco")
  2. %&My name is paco&
  3. %(My name is paco)

2. What does gsub does?
  R: The gsub method takes the first parameter that can be a string or a regex and when it finds it on the string we have to the method, it will drop that and put the second parameter.

3. What is a symbol?
  R: A symbol is an object that can only be stored in memory one time, in that way they are always refering to the same point in memory(inmutable) and they are used as a identifiers. Also we can find them often in hashes. 

4. If we define three symbols, with the same value, :example, and the second has object id 437768 what would the object_id of the other two would be?
 R: It will be the same object id, because we are refering to the same symbol.


5. What is reflection in programming?
  R: The capability that languages give to programmers to know what is happening in the program without trying too hard to understand the code.

6. Define the usage of the three metaprogramming methods.
  R: 
  1. ".send" it is a method to call a method with its symbol


7. How do we access the symbols table?
  R: We can use "Symbol.all_symbols" to get all the symbols that are saved

8. How do we define a hash? 
  R: Hashes are collections or dictionaries that store key and value in pairs and they can ve initilize like this "Hash.new" or "{}", they are commonly used to store a lot of information that can be access only with the key.

9. Define three methods for a hash and their usage.
  R:
  1. .delete(key) -> This help us to delete a specific key with his value
  2. .empty? -> This method check if the hash is empty and retrieve us a boolean
  3. .keys -> This method creates and print an array with the keys of the hash.


10. How do we define and instance a Time variable?
  R: The Time class type is a representation of the date (day, month and year) with the time (hour, minutes and seconds)
  To create a Time instance it will be like this "Time.new(2000, 02, 12)" or if we want the time in this moment it could be like this "Time.now"

11. How do we access the day of the time? 
  R: We can use the method ".day" to get the day that is on the time variable like this "time.day"

12. Elaborate an script that has all requirements to run and exemplify the usage of three methods for Date. Please consider you would need to store the Date in a variable.
  R:
  puts "Give me your birthday"
  puts "First your year"
  year = get.chomp
  puts "Second your month"
  month = get.chomp
  puts "Last your day"
  day = get.chomp

  my_birthday = Date.new(year, month, day)
  my_birthday.strptime("3 of March in 1998", "%d of %B in %Y")

  new_date = Date.parse("#{year}-#{month}-#{day}")
  new_date.strftime("Hi on %A i will have a party at %d %B %Y")

13. What is ActiveSupport?
  R: ActiveSupport is a component that ruby on rails have by default, that help us give a certains extensions or libraries to manage or use ruby with all its potential.  

14. How do we format a string in a single line?
  R: To format the string in a single line we can use "#{}" the interpolation characters or a list of a format specifiers.
  Each one has its own use "%c , %f, %s, %d, etc...".
  Here are some examples:
  name= "paco"

  "Hi my name is #{name}"
  "Hi my name is %s" % name
  "The apple costs %f" % 3.1