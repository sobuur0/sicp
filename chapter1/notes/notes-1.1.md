# 1.1 The Elements of Programming

A program is a set of rules which are used to direct the evolution of a process.\
A programming language makes it possible for a programmer to express procedural thoughts.\
In CS, there is not difference between what can be build and what can be imagined. The consteaints to building computer systems are the limits of our minds.\
Foundational things to understand in a programming language are:
- Primitive elements
- Means of abstraction
- Means of combination

The mathematical convention of evaluating a combination is to place the operator in between two operands. whereas in lisp, the idea of prefix notation is used, whereby, the operator is placed to the left of the operands.\
Data are elements that we will like to manipulate and procedures are the description of rules for manipulating this data.\
The value of a combination is gotten when the procedure of an operator is applied to the values of the operand.\
A global environment refers to the memory which an interpreter(in this case our scheme interpreter) uses to store things like our name-object pair that has been declared so they can be easily retrieved when needed.\
A feature of the lisp language is that its procedures can also be represented manipulated as data.\
A recursive procedure is one which included in one of its steps requires the need to invoke the rule itself.\
A simple example of a an abstraction technique is the definition of names and assigning a value to it. With this, one doesn't have to worry anymore about the value but just use the name wherever it is needed in the program. Same can also be said for a procedure definition.\
Same way a pronoun is used in natural language, a local name can also be used in a procedure to perform the abstracted operations and then whenever the procedure needs to be used, the number/object the procedure is trying to perform an operation on is substituted for this local name. Fo convention, these local names are called parameters and are used in the body of the procedures to represent the number/object(conventionally known as arguments) that was referenced earlier.\

