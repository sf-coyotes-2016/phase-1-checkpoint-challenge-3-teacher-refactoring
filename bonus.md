# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?

Hash.fetch is useful because it allows us to set up a default value if nothing is passed in on initialize.

2. What is the disadvantage of single inheritance, and what's a possible solution to that problem?

The disadvantage of single inheritance is that information can only be passed down one way in a very structured parent/child tree.

A solution to this is to use more modules where you can pass in methods to all of your different classes.

3. Why are these classes initialized with an options hash?

It makes more since to use a hash to set values to attributes such as name: 'Jason'

Easier to access data for later use where using an array might not be as useful.

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?

The private keyword keeps methods in its own class only to be called within the class itself. 

They will not be able to be called outside the class. They are useful to protect sensitive data.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

All of these concepts are important because in real world programs, it provides more readability, its easier to make changes, easier for other programmers to read our code.

It's way harder to make changes if our methods are too long or doing too much responsibility. Makes it harder to make changes.
