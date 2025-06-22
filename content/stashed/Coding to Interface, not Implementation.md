---
title: Coding to Interface, not Implementation
description: Exploring the design principle in software development that strictly emphasized the use of abstract types rather than concreate classes.
tags:
  - design-principles
  - any-lang
  - essentials
  - micro-learning
uuid: SHORT1b9d3f81-0fb1-4235-88c0-64b2eeda4f2e
---
# Table of Contents

# Summary

"*Coding to interfaces, not implementation*," is a technique that enhances classes based on a predefined interfaces; interface that defines what the behavior of the object should be. It is a design principle that emphasizes the use of abstract types rather than concrete classes, which can overall improve flexibility, maintainability, and testability of software systems.

**What are interfaces?**

Interfaces are a language construct that lets developers define a **contract** that must be followed and adhered to by the class that's implementing such an interface. They allow us to take objects, that may have almost nothing in common, and write reusable code combining similarities. However, interfaces by default focus more on the "what" rather than the "how".

> [!note] Key Notes on Interfaces
> Most of the information for interfaces will be present in folders for programming languages that have such a feature. To note, for java, any field declared on an interface are implicitly **pubic static final**, or just known as **constants**.

## Benefits of Approach

There are a plethora of benefits regarding this design principle, but most fall in line with the following:
1. **Decoupling**: It decouples the code from specific implementations, making it easier to swap implementations without affecting the rest of the software system.
2. **Testability**: Allows for unit testing by allowing the use of mock objects that implement the interface.
3. **Maintainability**: It makes the code more maintainable by isolating each dependency between components.
4. **Flexibility**: it allows for easier refactoring and extension of the system.
## Program to an Interface, Not an Implementation

From the brief explanation provided above, one can assume that there are plenty of merits when using interfaces as they define the behavior of any classes that implements it. This provides an increase in flexibility, scalability, robustness, and much more. Instead of directly instantiating objects of specific classes, you can use a factory pattern that returns instance of classes that implement a specific interface. Or when writing a function or method, you specify the parameters to be of a certain interface type rather than a class itself.

> [!note] What did we Learn?
> We learned that there are many merits to applying the "Program to an Interface, Not an Implementation" design principle. Following the principle will increase maintainability, testability, flexibility, and overall long term scalability. 

---
## Extensions ✨
- [OOP Good Practices: Coding to the Interface](https://medium.com/javarevisited/oop-good-practices-coding-to-the-interface-baea84fd60d3)