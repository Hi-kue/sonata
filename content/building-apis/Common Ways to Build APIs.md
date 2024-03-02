---
title: Common Ways to Build APIs
description: Exploring the approach towards building APIs (Application
tags:
  - essentials
  - api-dev
  - building-apis
  - any-lang
uuid: APIf1172454-24f5-44ca-8ace-8bc1c0025b9c
---
# Table of Contents

# Summary

This document is a curated list of beginner and intermediate focused topics primarily covering the development of APIs and understanding their use cases in the modern world of development. It is recommended to have prior knowledge of development, including design pattern knowledge as APIs can become a very difficult and extensive subject to cover properly.

## TL;DR


## What is an API?

In simple terms, consider yourself as a customer sitting at a table within a restaurant. A waiter comes to you and asks for your order--- which you happily comply--- providing the order to the waiter; its the waiters responsibility to communicate your order (request) to the kitchen and have a chef make it for you. After its been made, its the waiters responsibility to serve the dish you have requested in the manner you would expect to be presented, and the waiter happily does so. This process is similar to the process of an API.

> [!note] Definition of an API
> An application programming interface (API) is a way for two or more computer programs or components to communicate with each other. It is a type of interface, offering a service to other pieces of software.

That definition above would be fine, but its very vague, a proper definition would be: *an API is a intermediary communication layer that communicates and shares information (or performs a specific task) from A to B.* For an API, it's job is to transfer data or perform actions, giving each side (A or B) the intricate details **without** any of the other sides knowing each others internal architecture. 

## How is it used in Microservices or Monoliths?

Microservices and Monoliths are architectures that heavily differ from one another. However, they both use APIs to get the job done.

1. **Monolithic Architecture**: Since monoliths employ a set of layers, usually falling in the line of **UI, Business Logic, Data Access (Database)**, APIs would false right in the middle where most of the business logic resides. APIs would need to communicate with the Database to retrieve information, and send data to the UI (User Interface) in order to display the data appropriately and make use of it.
2. **Microservice Architecture**: In Microservices, APIs are used to communicate between microservices. Think of it as a *web of complexity* where APIs are continuously talking and communicating with one another to perform some task efficiently. Usually each microservice can expose its functionality through an API, where other APIs from other microservices can interact with it.

## Building a Production Level API

Production-level APIs require a lot of work upfront. They should be designed with the following in mind:
1. Reliability
2. Scalability
3. Maintainability
4. Flexibility
5. Being Secure & Efficient
6. Meeting End-User Requirements

Production-level APIs are usually publicly accessible, but at times there would be a need for more private and secure APIs that are used internally within a company--- which is fine, since its sensitive data.

## What Benefits do APIs Provide?

Many, its a gold standard for developing any application. APIs are near integral to most modern software development as its one of the best ways for **completely different** applications to speak with one another.

## What are some Common APIs?

Unless I was to miraculously come across a written dissertation for "The most common APIs of the century," I would probably assume everything within there will either be hardly used or obsolete (unless there are some rare occasions). As anything in Software, APIs are always being continuously developed--- they change over, and over, and over. While I cant guarantee or provide a proper list of the most common APIs, I would suggest looking into this site: https://rapidapi.com/.


## Common Ways to Build APIs

The most common ways to Build APIs comes from the following article: https://blog.amigoscode.com/p/6-common-ways-to-build-apis, where the six more common ways are the following:
1. *Restful APIs*
2. *GraphQL APIs*
3. *gRPC APIs*
4. *Web Socket APIs*
5. *MQTT APIs*
6. *Serverless APIs*


---
## Extensions ✨
-  [What is an API - Red Hat](https://www.redhat.com/en/topics/api/what-are-application-programming-interfaces)