---
title: Document Conventions
description: A document curated to understand the conventions required for each subsequent document, using templates that provided within the /templates folder. Following conventions will improve readability, maintainability, and overall structure for each topic covered.
tags:
  - weplh
  - essentials
  - learning-prog
  - what-every-language-probably-has
uuid: 4110e827-f661-419c-84a5-09065209ccc9
---

# Table of Contents

- [Table of Contents](#table-of-contents)
- [Abstract](#abstract)
  - [Questions](#questions)
  - [Conventions Guide](#conventions-guide)
  - [Using Templates](#using-templates)
  - [Extensions ✨](#extensions-)

# Abstract

When documenting a programming language, resource, or topic, it is best to adhere to specific conventions that ensure the following:
- Clarity within text;
- Consistency throughout documents;
- Readability throughout documents.

Documents that do not follow a set of conventions, will often times be difficult to understand from the vast audience--- which--- happens a lot more than usual. This document aims to address some of the conventions that will be used throughout every document for every programming language, topic, or resource.

## Questions

> [!WARNING] A Note to Consider
> 
> Most information regarding the structure and organization of documents can be found at this link: [Markdown style guide](https://google.github.io/styleguide/docguide/style.html) 

> How do I structure my document? 

Structuring your document is a simple as using a template located within the `/templates` folder or by following any of the documents that have already been written down before and looking into how its organized. Aside from this, you can also check out the link above within the callout to understand how to structure markdown documents.

> How should I format code blocks and inline code?

**Inline code blocks** should only use single backticks (\`) and most inline code blocks will only be a single line or a couple words that can be jumbled into single backticks.

**Code blocks** should always use triple backticks (\`\`\`) as this is the most appropriate way of doing them. You may also specify the language you are making a code block for in abbreviation or in full word (depending on the language).

> How do I include links and images?

**Links** are usually going to follow the following format:
1. `[link shortened text](url)`

**Images** will use another specific format which are only relevant to images, they will follow the following format:
1. `[![alt text](image url)](target url)`

Although it looks a little bit confusing, obsidian makes it easier to import images without the hassle of writing something like the above down.


> What are the best practices for writing documentation?

Most best practices will come from the following [Markdown style guide](https://google.github.io/styleguide/docguide/style.html) but there are some other things to consider:
1. **Clarity and conciseness**: You should always write in a clear, concise, and intentional manner, avoid jargon and explain terms when already introduced.
2. **Consistent terminology**: Use consistent terminology and capitalization through the document. Depending on the language you might need to use Pascal-case where other languages would prefer you use underscores.
3. **Examples and use cases**: Include plenty of examples and real life use cases that will illustrate your point further.
4. **Readability and maintainability**: Break up long paragraphs, try to formulate notes and jot notes out of paragraphs if possible, use lists, and emphasize important points with bold and italics. 

> How do I document code-specific elements?

For most methods and functions, you should document its purpose, parameters, return values, and some examples of how the functions or methods might work.

> How do I manage versioning and updates throughout a document?

Versioning is handled by GitHub, most changes that get through will be accepted so long as they conform with maintainers. You can however provide some notes to changes made on a document through a pull request but this is not necessary as a maintainer will check it eventually.

> What are some places I should start first?

I would recommend to look into the `README` and `CODE_OF_CONDUCT` first and foremost for the repository as it would be the best place to understand what this project is for.

> How do I ensure accessibility and inclusivity?

There are many ways to ensure accessibility and inclusivity throughout your document, we consider all documents to be written in English, for most images to have some sort of alt-text, with proper color contrast for images and any custom HTML.

## Using Templates

Templates are provided within the `/templates` folder and they contain all the templates that anyone will use when writing up something interesting about a programming language, resource they found, or anything that provides value to their learning. Its essential to note that most information will be bite sized and spread throughout multiple documents to prevent getting overwhelmed with information.

As of now the templates that we have are the following:
1. `Action Archive Note Template (Anote)`
2. `LEAN Note Template`
3. `Programming Note Template`
4. `Project Note Template (Pnote)`
5. `Simple Note Template (Snote)`
6. `Term & Definitions Template`

## Quick Notes

Adhering to documentation conventions and using templates will significantly improve the quality and consistency of each document. You will always be able to contact other maintainers, to ensure that the document you are creating is accurate, comprehensive, and valuable.

**Note**: Some documents will be ignored or altered without notifying you, this is only done by maintainers.

--- 

## Extensions ✨
- [C# Documentation](https://learn.microsoft.com/en-us/dotnet/csharp/)
- [Java Documentation](https://docs.oracle.com/en/java/)
- [Python Documentation](https://docs.python.org/3/)
- [JavaScript Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- [Alternative JavaScript Documentation](https://javascript.info/)
- [Go Documentation](https://golang.org/doc/) 
- [Kotlin Documentation](https://kotlinlang.org/docs/home.html)