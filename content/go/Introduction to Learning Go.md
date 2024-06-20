---
title: Introduction to Learning Go
description: Introduction to Go, an open-source programming language designed by Google, created by Robert Griesemer, Rob Pike, and Ken Thompson. Go aims to address issues commonly found in other programming languages such as slow compilation times, complex dependency management, and difficulty writing concurrent programs.
tags:
  - micro-learning
  - learning-prog
  - learning-go
  - essentials
  - go-reference
uuid: 51d61f6f-bdb7-4bd6-a01f-d4ca0f7d10a1
---
# Table of Contents

- [Table of Contents](#table-of-contents)
- [Abstract](#abstract)
    - [What is Go?](#what-is-go)
    - [Interesting Facts about Go](#interesting-facts-about-go)
  - [Definitions](#definitions)
  - [TL;DR](#tldr)
  - [Extensions ✨](#extensions-)
  - [Books to Consider Reading 📚](#books-to-consider-reading-)


> [!WARNING] Prerequisites for learning Go
> Documents related to go are following a series on Udemy by [Maximilian Schwarzmüller](https://www.udemy.com/user/maximilian-schwarzmuller/) among some other prominent developers and course creators on LinkedIn Learning. To follow along with learning go, it is highly recommended to know the basics of another language.  

# Abstract

### What is Go?

Go, also known as Golang, is an open-source programming language developed by Google, designed by Robert Griesemer, Rob Pike, and Ken Thompson. Go aims to address concerns in other programming languages such as the following:
1. Slow compilation times;
2. Complex dependency management;
3. Challenges faced in concurrent programming.

The language features a clean and concise syntax, making it easy to pick-up, learn, and use. Go's powerful concurrency model, based on `goroutines` and channels, simplifies the development of concurrent applications. 

Additionally go also includes the following features:
- Extensive standard library;
- Static typing;
- Garbage collection;
- Robust and reliable environment for building:
	- Scalable systems;
	- Web servers / web applications;
	- Networking tools.

### Interesting Facts about Go
- Go is mostly influenced by C, among other languages including:
	- C++, C#, and Java.
- Go implements many well defined OOP concepts such as:
	- Encapsulation with `types` and `structs`;
	- Polymorphism with `interfaces`.

## Definitions

**goroutine**: lightweight execution thread in Go and a function that executes concurrently with the rest of the application.

**garbage collection**: also known as GC, is the process of recycling memory on behalf of the application by identifying which parts of memory are no longer needed.

**dependency management**: the process of managing all irrelated tasks and resources to ensure application completes successfully, on time, and on budget. 

**concurrency**: the fact of two or more events or circumstances happening or existing at the same time. 
	`[!!cite:computing term]` ability to execute more than one program or task simultaneously.

## TL;DR

Go, or Golang, is an open-source programming language from Google, created to tackle issues like slow compilation, complex dependency management, and concurrent programming challenges. It features an easy-to-learn syntax, an efficient concurrency model using goroutines and channels, and includes a comprehensive standard library, static typing, and garbage collection. Go is ideal for building scalable systems, web servers, and networking tools.

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
