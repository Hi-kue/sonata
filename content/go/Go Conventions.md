---
title: Go Essentials
description: Introduction to the essentials of Go programming, covering topics such as functions, conditional logic, methods, operators and more.
tags:
  - micro-learning
  - learning-prog
  - learning-go
  - essentials
  - go-reference
uuid:
---
# Table of Contents


> [!WARNING] Prerequisites for learning Go
> Documents related to go are following a series on Udemy by [Maximilian Schwarzmüller](https://www.udemy.com/user/maximilian-schwarzmuller/) among some other prominent developers and course creators on LinkedIn Learning. To follow along with learning go, it is highly recommended to know the basics of another language.  

# Abstract

Conventions are important, and go is no exception for having its own ideal structure and conventions guide. Similar to how Java or C# has adapted a pragmatic and conventional dogma for how their languages should be structured, developers at Google who create and maintain go have done the same. Googles [style guide for go](https://google.github.io/styleguide/go/) provides meaningful insight on how applications build using go should be orchestrated.
## Questions / FAQ

## Conventions in Go

Google defines a set of **style principles** that all readable go code should implement, the following are attributes of readable code, in order of importance:

### Clarity
- **Purpose and Understanding**: Code should be clear to the reader, focusing on what it does and why. Use descriptive names, add comments, refactor for modularity, and document the "why" behind complex logic or nuanced code sections.
- **Documentation and Comments**: Documentation and comments should explain the rationale behind the code, not merely describe what it does. They should clarify complex logic, performance optimizations, and the distinction between the actual user and impersonators.

### Simplicity
- **Simple and Understandable**: Code should be straightforward, avoiding unnecessary complexity. It should be readable from top to bottom, not assuming prior knowledge, and not having excessive abstraction or confusing names.
- **Complexity Justification**: When complexity is necessary, it should be deliberate, well-documented, and accompanied by tests and examples. Complex code should indicate a need for careful understanding and maintenance.

### Least Mechanism
- **Standard Tools Preference**: Prefer using standard language constructs, standard library tools, and established patterns from the Google codebase over introducing new dependencies or complex solutions.
- **Simplifying Choices**: Optimize for simplicity by choosing the most straightforward approach among available options, avoiding unnecessary complexity.

### Concision
- **High Signal-to-Noise Ratio**: Code should be concise, minimizing repetitive elements, extraneous syntax, opaque names, and unnecessary abstraction. This includes avoiding repetitive code blocks and using common idioms effectively.
- **Attention to Detail**: Enhance readability by clearly marking significant details, especially in error handling and complex logic, to prevent overlooked changes.

### Maintainability 
- **Future-proofing**: Code should be easy to modify, with clear APIs, minimal assumptions, and a comprehensive test suite. Avoid unnecessary coupling and unused features.
- **Predictable Names and Structure**: Use predictable naming conventions and structure code in a way that facilitates future modifications and reduces the risk of overlooking critical details.

### Consistency
- **Uniformity Across Codebase**: Strive for consistency in coding styles, approaches to solving problems, and naming conventions within a project or team. Consistency helps in maintaining readability and ease of understanding across the codebase.

### Why do we use Conventions?

*Why not use conventions?* Conventions are the cornerstone of developing robust, scalable, and maintainable software. Without conventions it would be similar to writing spaghetti code and expecting it to be solved by yourself.

### What is the Underlying Importance of Conventions?

## Definitions

## TL;DR

---
## Extensions ✨
- [Go User Manual](https://tip.golang.org/doc/)
- [Effective Go](https://tip.golang.org/doc/effective_go)
- [Go Standard Library](https://pkg.go.dev/std)

## Books to Consider Reading 📚
- [Learning Go - Jon Bodner](https://learning.oreilly.com/library/view/learning-go/9781492077206/)
- [100 Go Mistakes and How to Avoid Them - Teiva Harsanyi](https://learning.oreilly.com/library/view/100-go-mistakes/9781617299599/)
- [Shipping Go - Joel Holmes](https://learning.oreilly.com/library/view/shipping-go/9781617299506/)
