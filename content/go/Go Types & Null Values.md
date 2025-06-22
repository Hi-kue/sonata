---
title: Go Types & Null Values
description: 
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

### Basic Types

Go comes predefined with a couple of built-in basic types, these include but are not limited to the following:
1. `int`: A number **WITHOUT** a decimal place (e.g., -5, 10, 15)
2. `float64`: A number **WITH** a decimal place (e.g., -5.2, 10.0, 15.9)
	1. `string`: A textual value (created via \` or \") (e.g., `"Hello World"`)
3. `bool`: Can only be either `true` or `false`

There are however, many more "*niche*" basic types that should be known and are used often:
1. `uint`: An unsigned integer, which means a strictly non-negative meaning **NO** negative integers (e.g., 0, 5, 10, 15)
2. `int32`: A 32-bit signed integer, which is an integer with a specific range from -2,147,483,648 to 2,147,483,647.
3. `rune` An alias for `int32`, represents a single Unicode code point (i.e., a single character), and is used for dealing with Unicode characters.
4. `uint32`: A 32-bit unsigned integer, an integer that can represent values from 0 to 4,294,967,295.
5. `int64` => A 64-bit signed integer, an integer that can represent a larger range of values which are from -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.

There are many other types like `int8` or `uint8` these all work in a similar fashion.

### What are Types?

Go has a very comprehensive type system, however types in go are very simple and straightforward. Go as of now, currently consists of the following types:
1. Strict Types;
2. Pre-declared (Named) Types;
3. Composite (Unnamed) Types.

#### Strict Types in Go

```go
var counter int // def: 0
var mask int32 // def: 0
var message string // def: ""
```

#### Named Types in Go

#### Composite Types in Go

### What are Null Types?

All go value types come with a so-called "**null value**" which is the value stored in a variable if no other value is predefined (explicitly) set. You can consider them also as default values for each data type before assignment.

Here is a list of all null values for different types:

1. `int`: 0
2. `float64`: 0.0
3. `string`: `""` (also known as an **Empty String**)
4. `bool`: false

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
