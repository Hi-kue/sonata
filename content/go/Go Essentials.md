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

## Functions & Methods in Go

### What are Functions?

Functions are "self contained" blocks of code that accomplish a specific task. They are considered as a sequence of steps that are part of a larger application. As with any other programming language, Go has 2 types of functions:
1. User defined functions;
2. Built-in/Library functions.

User defined functions are functions that the developer (user) would create in order to solve or handle some logic, an example of this can be filtering JSON data and only retrieving valuable information or adding 2 numbers together to get a total.

Built-in/Library functions are functions that are created by the developers of that specific language--- in our case, go--- that provide additional functionality out of the box. For go there is a module called `fmt` which is a collection of formatted I/O functions that provide custom formatting of a string, similar to C's `printf` or `scanf`.

### Benefits of Functions?
- More modular code blocks;
- Improved readability throughout application;
- Reusability, removing repeatability of similar logic;
- Maintainability, being easier to maintain throughout the application life-cycle.

### What are Methods?

Go does not have anything like classes, which is a popular OOP concept. However, you are able to define methods on types. A method is essentially a function with a special *receiver* argument.

Provided below is an example of *receiver* arguments in action:
```go
package main

import (
	"fmt"
	mth "math"
)

type Vertex struct {
	X, Y float64
}

func (v Vertex) Abs() float64 {
	return mth.Sqrt(
		v.X * v.X + v.Y * v.Y 
	)
}

func main() {
	vertex := Vertex{3, 4}
	fmt.Println(vertex.Abs())
}
```

In the example provided above, the `Abs` method is taking in `Vertex` named `v`, this is the receiver argument. Also notice how you are able to use method call on the `Vertex` type being creating using a . and `Abs()` right after, rather than having to use something like this: `Abs(vertex)`.
## Conditional Logic in Go

### What is Conditional Logic?

Conditional logic are series of conditional statements or a singular statement that are used to perform different actions based on various conditions and criteria being met. 

They are part of the fundamentals of learning a programming language. In go, there are only a few key conditional statements that the following:
- `if statements`
	- `if-else statements`
	- `if-else if statements`
- `switch cases`

For go, this is all you need to take into account, *it's kept simple to promote idiomatic practices*, which I prefer 

## Definitions

## TL;DR


---
## Extensions ✨
- [Go User Manual](https://tip.golang.org/doc/)
- [Effective Go](https://tip.golang.org/doc/effective_go)
- [Go Standard Library](https://pkg.go.dev/std)

## Courses on Go
- [Go - The Complete Guide by Maximillian Schwarzmüller](https://www.udemy.com/course/go-the-complete-guide/?couponCode=ST19MT61724)
- [Go Essentials - Concurrency, Connectivity, and High-Performance Apps by Miki Tebeka](https://www.linkedin.com/learning/go-essentials-concurrency-connectivity-and-high-performance-apps)
- [Learning Go by David Gassner](https://www.linkedin.com/learning/learning-go-8399317/)
- [Learning the Go Standard Library by Joe Marini](https://www.linkedin.com/learning/learning-the-go-standard-library/)
- [Go Design Patterns by Joe Marini](https://www.linkedin.com/learning/go-design-patterns/)

## Books to Consider Reading 📚
- [Learning Go - Jon Bodner](https://learning.oreilly.com/library/view/learning-go/9781492077206/)
- [100 Go Mistakes and How to Avoid Them - Teiva Harsanyi](https://learning.oreilly.com/library/view/100-go-mistakes/9781617299599/)
- [Shipping Go - Joel Holmes](https://learning.oreilly.com/library/view/shipping-go/9781617299506/)
