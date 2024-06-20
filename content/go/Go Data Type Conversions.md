---
title: Go Essentials
description: Introduction to conversions, a process through which one data type can be converted to another using a conversion method. This may change the representation and will have a run-time cost.
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

## Conversions in Go

### Why do we use Conversions?

Being go, a statically-typed programming language, conversions are necessary to ensure compatibility between different data types. It is a process that involves changing the type of a variable to another explicitly, providing precision and avoiding any unintended behavior.

### Types of Possible Conversions

> [!NOTE] General Formula
> The expression for conversion is similar to this: `T(x)` where the value x converts to the type T.

#### Integers
- When converting to a shorter integer types, the value is **truncated** to fit in the resultant type's size.
- When converting to a longer integer type:
	- If the value is a **signed** integer, it is **sign extended**.
	- If the value is an **unsigned** integer, it is **zero extended**.

```go
a := uint16(0x10fe) // 0001 0000 1111 1110
b := int8(a)        //           1111 1110 (truncated to -2)
c := uint16(b)      // 1111 1111 1111 1110 (sign extended to 0xfffe)
```
#### Floats
- Converting a floating-point number to an integer, the **fraction is discarded** (truncated towards zero).
- When converting an integer or floating-point number to a floating-point type, the result value is **rounded to the precision** specified by its destination type.

```go
var x float64 = 1.9
n := int64(x) // 1 
n = int64(-x) // -1

n = 1234567890
y := float32(n) // 1.234568e+09
```

> [!CAUTION] 
> In all non-constant conversions involving floating-point or complex values, if the result type cannot represent the value the conversion succeeds but the value is implementation-dependent. 

#### Integer to Strings

#### String to Byte Slices

#### Underlying Types

#### Implicit Conversions

####

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
