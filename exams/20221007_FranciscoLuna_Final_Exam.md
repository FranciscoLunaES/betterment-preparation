1. In Ruby, how do we return multiple variables and assign them where we use that method in particular?
  R: We can use a hash to store all the variables with its value

2. Elaborate on the description of two design patterns. 
  R: 
   1. Singleton: Is a parent class which principal objective is to act like a filter that only works with one object, to give access.
   2. Observer: Is a pattern that subscribe the objects to the events that happen to certain object.

3. Define three form helpers
  R:
  1. text_field: A field that you can add any text
  2. color_field: A selector where you can choose a color
  3. hidden_field: A field which doesn't shows(hidden)

4. What is the Rubocop convention for constants in Ruby?
  R: All the constants have to be in uppercase and with snake case(ex: FINAL_EXAM)

5. What are keyword splat arguments? 
  R: Is a way to define the arguments like a hash(key:value) and get all of them in the function

6. How do we define an inclusive range?
  R: You only have to put two dots(ex: (1..10))

7. What is the preferred way to interpolate variables in a string?
  R: Like this "#{variable}"

8. Explain what lambdas are and exemplify how they are declared.
  R: They allow us to get logic and data in one block and keep it in a variable to use it in another place. myLamdba = lambda {puts "Soy lambda"} or  myLamdba = -> {puts "Soy lambda"}

9. What is the symbols table and how do we access to it?
  R: Is a table where we can find all the symbols that ruby allow us to use. If we want we can add more. We can access to it like this: Symbol.all_symbols

10. For what is the method strftime?
  R: With this method we can change the date format, according with the parameter you send.

11. What is ActiveSupport and exemplify some useful methods available through it. 
  R: ActiveSupport is like a library or module that give to use more methods that we can use with ruby.
  Ex: ["a", "b"].first
      Time.now

12. Elaborate on three software development best practices.
  R: 1. Fail fast: Start coding and fail as fast as posible to change your code and make it better, dont test only gold paths.
     2. Comments and meaningful naming: add comments but only the necessary or meaningful. Your variables and methods have to describe what the action makes or what value have.
     3. Refactor: Write your code ones and then make it better.

13. What is the difference between if, unless, while, and until.
  R: 1. If is a conditional to give access for the block just if the statement is true
    2. Unless is the opposite of if, it only give access if the statement is false
    3. While is a cicle that will run until the statement change to false
    4. Until is the opposite of while, it will run until the statement change to true

14. Exemplify the usage of downto.
  R: If we give to the function only one number it will count until 0, in the other case, if we give to the function two numbers it will count until we reach the second number.

  ex: num.downto(|x| print x)

15. Explain the main concepts of SOLID.
  R:
  1. S = Make your classes and methods atomic
  2. O = It is a good practice to extend your classes or methods, but not to modify them because you can break anthing else.
  3. L = Methods with raise notimplemented to use them as a extension for the parent class.
  4. I = If a class is not using a method of the parent, it is a better practice to refactor it.
  5. D = The classes that are parents doesn't have to depend of child classes. We have to make abstractions.

16. Define what is the object space.


17. What is metaprogramming and explain the three methods for it? 
  R: It the technique that you write code to modify another code that was implemented(in runtime)

18. How do we recover from Memory Loops and Performance Issues? 
  R: We can use memoization to keep a value of in a variable with this "||="

19. What is Authorized Persona? 
  R: It is a gem where we can manage access for each action in a controller. It allow us to define a hash with a key as the name of the authorization(member, admin, etc.) and the value is a description of the level of authorization(all, certain actions, etc).

20. How do we access to the internationalization translate method?
  R: We can access with: i18n.t() or t() the last one is for views

21. What does name-spacing a resource mean? 
  R: Give to a some routes or objects a name that is used as a identifier of them.

22. How do we rescue from errors in controllers? 
  R: We can use the block: 
  begin
    //code
  rescue
    //code
  end

  With that block we can check if something happend and handle that error.

23. What are filters and how do we avoid using them in a certain aciton?
  R: Filters are methods that run in a specific moment and we can call some method to be executed at that moment.

24. How do we bring objects through batches in ActiveRecord?
  R: The structure of a batch is like this: 
    Products.find_each do |product|
      //SOMETHING
    end
  It returns first 1000 records.
25. Explain what is Sidekiq? 
  R: Sidekiq is a gem that give us the possibility of manage all the jobs that we are going activate. The difference between using sidekiq and the native jobs in rails is that we can manage many jobs at the same time.

26. How do we define three different relationships in a Model?
  R:
  1. many to many: We have to use has_many :productUser, has_many :products, through: productUser and the same in the other side
  2. one to many: We have to use has_many :books, and belongs_to :user
  3. self: We have to use has_many :members, class_name: "User", foreign_key: "captain_id", and belongs_to :captain, class_name: "User" 

27. Explain what is MVC. 
  R: Is an architecture of software that rails use for it structure. M is for model where we can define all the bussiness logic, Controller is the actions that are going happen if we access to a specific url, and Views that are all the html that you can see when the page load(we can add some variables that coming from the controller)

28. How do we replace text in a string using Regex?
  R: We can use the method sub to replace it. Ex: ("hola".sub(/d/, "adios"))

29. What is Ruby on Rails?
  R: Is a framework for web pages, with a MVC structure to manage all the views, controllers (actions) and the model(that has the logic of the bussiness and gives it two the database) 

30. Elaborate on three best practices for Ruby on Rails.
 R: 1. DRY: Is a good practice to don't repeat the same action over and over again, you can add a method an call it whenever you need it.
     2. COC: Rails was made with a objective. To make easy for the developers to write code and read it, so it is better to stay in the path of the conventions.
     3. SOLID: The S tell us that we have to avoid using methods to a lot of actions, it has to be just for one objective. (Make it atomic)