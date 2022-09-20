# The Cardano Engineeering Handbook

:construction:

This is the source repository for the [Cardano Engineering Handbook](https://input-output-hk.github.io/cardano-engineering-handbook/), a comprehensive resource about the development process of the Cardano core components that form the Cardano network, developed under the umbrella of the Cardano Open Source Consortium (COSC).

## History

In September 2022, right before the Vasil hard fork, _Input Output Global_ held a workshop in Lisbon with the Core engineering team in order to reflect on the development process and identify concrete actions that could undertaken in order to improve this process and its outcome, namely the cardano-node.
This handbook is one of the many actions that were initiated during that workshop, part of the overall initiative to turn Cardano into a truly Open Source project, eg. one that's maintained by an active community of teams and individuals and not by a single company.

## Purpose

The purpose of this handbook is both descriptive and prescriptive:

* On the one hand, it aims at _prescribing_ mandatory or optional processes, tools, practices, or artifacts that _any_ software project that's part of the COSC must or should follow in order to be a good citizen within the eco-system,
* On the other hand it aspires at _describing_ practices, processes, tools, or techniques encompassing the whole software development lifecycle that are used across the various projects, in order to provide a consistent _developer experience_ and make tacit knowledge explicit.

As such, it is composed of two parts:

* Part I, is about _policies_,
* Part II, is about _practices_.

# Building the book

The book can be built with the [`mdbook`](https://rust-lang.github.io/mdBook/) executable.

## Setup

* If you use Nix, you can get a shell with `mdbook` using `nix develop`.
* If you don't use nix, please follow the [Installation instructions](https://rust-lang.github.io/mdBook/guide/installation.html) on the _mdbook_ website.

## Building

Simply run the following command at the toplevel directory:

```
$ mdbook build
2022-09-09 09:40:08 [INFO] (mdbook::book): Book building has started
2022-09-09 09:40:08 [INFO] (mdbook::book): Running the html backend
```

This will create a `book/` directory with the formatted book as an
HTML website. Opening the `book/index.html` should display it in your
current browser.
