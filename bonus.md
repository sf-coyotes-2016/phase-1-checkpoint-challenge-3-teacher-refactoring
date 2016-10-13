# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?

Hash fetch is useful because it allows us to set default values from our args hash without running into issues with booleans. Using the logical or can cause problems, especially when trying to set to boolean `false` or `nil`. Using `||`, those will never be true and thus, never be assigned. 

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?

The disadvantage of single inheritance is that objects can only take bahovior from one other source. Given a we had a class of `Car` that drives, and a class of `Dog` that barks, we wouldn't be able to write very DRY code to build a thing that barks and drives, like a van that barks when the horn is pressed. 

The most common solution for this is to prefer composition over inheritance and to extract behaviors into modules whenever possible. 

3. Why are these classes initialized with an options hash?

Classes are initialized with an options has to break the reliance on argument order. Since values are associate with key, we don't need to know that `@name` should be set to the first item in an array, and we can instead just grab whatever value matches the key of `"name"` or `:name`.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?

It makes methods that can only be called within the class. Usually it's used to separate helper methods and methods that update data. Using them this way makes it  much easier to ensure a careless method call doesn't upset the balance of your program. 

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

These concepts help make programs more managable. They allow us to build a chain of behaviors so that we can identify where something went wrong more easily. If, instead of single-responsibility methods we had 1 long method with 10 responsibilities, it would be much harder to debug...