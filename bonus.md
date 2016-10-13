# Super Crazy Bonus Release

Edit this file to answer the following questions. Give examples. You may need to do a bit of research. :)

1. Why is Hash.fetch useful?
It allows you to set a default value.
##What is the difference in behavior of args[:key] vs args.fetch(:key) when :key is not present in the hash?

  The difference is args[:key] returns nil when :key is not present in the hash. In contrast, args.fetch(:key) will throw a KeyError if :key is not present and a default value is not supplied.

2. What is the disadvantage of single inheritance as opposed to multiple inheritance, and what's a possible solution to that problem?

Composition

3. Why are these classes initialized with an options hash?

So we can create an instance with or without having all values

4. What is the purpose of the private keyword in a class? What does it protect you from and why is that valuable?

Private methods can only be accessed from within the class. They can offer protection from misuse from outside of the class. A good example is obfuscating account numbers so that they are not fully visible from outside the class.

5. Why are concepts like encapsulation, single responsibility, and abstraction important? Now that you've been programming for a while, have you seen any advantages for yourself, or can you imagine them in the future?

These concepts are important for building easily scalable code.
