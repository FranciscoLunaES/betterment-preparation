1. Please define a raw abstract of a transaction, it can include between 3 and 5 operations. The transaction must be rollbacked.
R: 

BEGIN;
  SELECT * from teachers where id < 30;
  INSERT INTO students VALUES ("Paco", "Luna", 24);
  DELETE FROM school where name = "Cambridge";
  UPDATE students SET name = "Rodrigo" where id = 1;
ROLLBACK;

2. Please define a PostgreSQL function that returns true or false if the selected number is even. 
R: 

CREATE FUNCTION even(number int)
RETURNS boolean
language plpsql
AS
$$
BEGIN
  IF mod(number,2) = 0 THEN
    RETURN TRUE;
  ELSE
    RETURN FALSE;
  END IF;
END;
$$


3. What is an aggregate function and define what do they need to work.
R: An aggregate function are operation already created that operates in the inputs that the group by give to them. 
In that way, we need a "GROUP BY" on the select.

4. Please define a custom aggregate function.
R: The custom aggregate are functions that you can create to used them in a group by in a select transaction.
You could make a operation to get the moda, mediana, etc..  

5. Between what clauses do the HAVING clause execute?
R: Between group by and select

6. What types of views are stored in memory? Please define a way to use them (not create them).
R: The materialized views store the values of the table. "SELECT * FROM students_view" They can be used as a table.

7. How do you declare a cursor?
R: We can use "DECLARE cursor_name CURSOR FOR query" and in the query part we have to make a select to a table to have that in the cursor.

8. What is an asensitive cursor? 
R: It is the cursor that are visible the significant changes that occure in the tables and is implementation dependent

9. How do we define a custom cast?
R: We can use "CREATE CAST (original_type AS Objective_type) WITH FUNCTION function_name" so in that way we can make our casts to chage a value from a type to another type.

10. What command do you use to bring the commit with hash 3c94f71fdf813bc475cb13f8f90b83de9cc475cb to the current branch?
R: I use the command "git cherry-pick" at the final we have to add the hash

11. How do you mix the branches chore/configuration and chore/setup?
R: We can use the "git merge" command to merge chore/configuration to chore/setup

12. How do you make a commit? 
R: I use the command "git commit" and we can add the "-m "Initial commit" " to name it directly

13. What HTTP methods are idempotent?
R: The methods GET, HEAD, PUT, DELETE are idemponent

14. Please define the A PIE of Object Oriented Programming.
R: The A PIE are the four major building blocks or the bases of every object oriented language (Abstraction, Polymorphysm, Inheritance and Encapsulation)

  - Abstraction = Hide the complex operations
  - Polymorphysm = Use the methods that are in the parent, and change them overriding or overloading
  - Inheritance = When the child can use the methods of the parent
  - Encapsulation = Contain info like a block of certain areas and display where it is needed.

15. Define a polymorphic method in Ruby.
R: It is a method that can be override(change the behavior of the method) or overload(can have diferent behavior depending the quantity of arguments) the last one ruby doesn't have. 

16. Define the usage of super and explain what is the difference between using parenthesis or not.
R: The usage is to get all the behavior that is in the parent method, the parenthesis is to pass the arguments that we will need in the parent method.

17. What is the difference between include and extend?
R: Include is to add only to an instance of a class but with extends we are adding the methods to the class an not in its instance

18. Define what is a class method?
R: A class methods are methods that are linked to the class and not to the object, so they don't require an instance so we can call them directly on after the class name

19. Define what is an instance method?
R: A instance method is directly linked or related to the object and not to the class. We have to create an instance to call that method.

20. What is IRB?
R: Interactive ruby shell, where we can use ruby methods or operations.

21. How do we know what type of class is a variable?
R: With the ".class" method or trying to guess with the "kind_of?" method

22. How do we define a binary number?
R: We only have to call the .to_s(2) method to get the binary representation of a number.

23. What are keyword splat arguments? Define the difference with splat arguments.
R: The keyword splat arguments are arguments that have a key of each one so we can splat all the hash or json as an argument.(**keywordsplat)

But the splat arguments are just arguments separated by commas like a array.(*splat)

24. How do we define a range?
R: we can define a range using parenthesis and giving a start string, number and a final with dots between them like this "(1..3)"

25. How do we modify arrays?
R: we can put the name of the array and in the square brackets the index that we want to change "array[1] = "red" "

26. Define three methods for arrays and their usage.
R: .push Is to add a new value at the final
  .pop to drop the last value in the array
  .length to get the length of the array

27. Define three methods for Numeric and their usage.
R: .odd? This method give us true or false depending if the number is odd
    .even? This method give us true or false depending if the number is even
    .floor This method rounds our number to the nearest (8.2.floor it will be 8)

28. Define three methods for String and their usage.
R: .gsub It is to substitude a value in the string
    .reverse To reverse the string
    .downcase To change all the string to downcase

29. Elaborate and explain the six assignment combined operators.
R: They are used to assign a value to a variable and depending which one we are using it will make and operation to both values

1. = Assign the value to a variable
2. += Assign the addition of the variable value and the right value
3. -= Assign the difference of the variable value and the right value
4. *= Assign the multiplication of the variable value and the right value
5. **= Assign the result value when the variable have the right value as exponent
6. /= Assign the division of the variable value and the right value
7. %= Assign the result of a module operation between the variable and the right value

30. What is the spaceship operator? How does it look like?
R: The spaceship operator only compares the length and the position in the ascii table
Looks like this "<=>" and retrieves -1, 0 or 1 depending the situation