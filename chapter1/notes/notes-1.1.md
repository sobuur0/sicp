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

Same way a pronoun is used in natural language, a local name can also be used in a procedure to perform the abstracted operations and then whenever the procedure needs to be used, the number/object the procedure is trying to perform an operation on is substituted for this local name. For convention, these local names are called parameters and are used in the body of the procedures to represent the number/object(conventionally known as arguments) that was referenced earlier.\

An interpreter uses either an applicative order or a normal order of evaluation. In an applicative order, the interpreter evaluates the operands and aplplies the corresponding procedure of the operator to the evaluated operands while in a normal order, the interpreter fully expands both the operand and the procedure of the operator, then reduces the expression by applying the already expanded procedure to the expanded operands respectively. Lisp uses the applicative order of evaluation mainly because of the added efficiency gained.\

A predicate is an expression/procedure that has a value that returns either true or false. predicates can also be primitive. eg of primitive predicates are =,<,> .\

When writing procedures for arriving at a solution for a problem, it is essential to make sure that each procedure mimics a subproblem of the problem to be solved. That is each procedure that is defined must be/delared in a way that each procedure solves an identifiable task.\

When a user/programmer decides to use each of these procedures, they shouldn't be concerned with how each of this procedures are defined, but only what value they return. when for example, we want to write a procedure that computes the "sum-of-square", since we would be using the square procedure, we shouldn't be concerned about how the square procedure was implemented but only the return type of the square since we would be using the abstraction of the "square" procedure in our sum-of-square.\

Lexical scoping is a discipline/concept which allows for a variable to be used freely by procedures which have been defined in thesame scope as the variable. for example, if we have a procedure that computes the square root of x, but then because when computing square root, we would need other procedures like "good enough?", "improve" etc and it is possible that when we are dealing with large programs, a different programmer might decide to write his own definition of "good enough?".., so we localize these subprocedures, that is we define these procedures inside the scope of "sqrt"procedure. Now since each of these subprocedures would be using the bound variable "x" in each of their definition, there will be no need to define it in each of these subprocedures, we can just use the one in the "sqrt" definition and in this case, the "x" variable becomes a free variable to these subprocedures but it still is bound to the sqrt procedure.\


# 1.2 Procedures and the processes they generate

The ability to visualize the consequences of the actions under consideration is crucial to becoming an expert programmer, just as it is in any synthetic, creative activity.\

A process which builds up with a chain of deferred operations and in the process gets expanded and then when it is fully expanded, starts the process of evaluation and in th
e process begins to contract is known as a recursive process. In this recursive process, the interpreter has to keeps track of the deferred operations which are yet to be evaluated so as to evaluate them when the time comes.\

When in a recursive process, the chain of deferred operations and the amount of information needed to keep track of it grows with n or is proportional to n, we say this is a linear recursive process.\

A process which has in its state, a fixed number of state variables and a fixed rule which describes how these variables move from one state to another and also an optional end test which specifies the condition under which the process should terminate is know as an iterative process. In an iterative process, the interpreter only keeps track of a fixed number of variables used in performing the said operation.
 
We say a process is linearly iterative when the number of steps in computing the operation grows linearly with n.
 
When a process is said to be recursive/linear recursive, this doesnt translate to it being a recursive procedure. A recursive procedure deals with the syntactic way in which a procedure ferefs to itself. A recursive process on the other hand is a pattern of how a process evolves in a recursive manner.
This is to say that a call to a recursive procedure in lisp, can ultimately produce a process which is iterative/linearly iterative in nature. We can then say that an iterative process can be described by a recursive procedure in lisp.
While this isnt supported in most languages, as to produce an iterative process one would have to use looping constructs like do, repeate, while etc...
 

