# The Cardano Engineering Handbook

This is the source repository for the [Cardano Engineering Handbook](https://input-output-hk.github.io/cardano-engineering-handbook/), which contains _cross-project_ policies and information that relate to all the projects in the Cardano Open Source Consortium.

## History

In September 2022, right before the Vasil hard fork, _Input Output Global_ held a workshop in Lisbon with the Core engineering team in order to reflect on the development process of Cardano and identify areas for improvement, especially in the light of the increasing move towards open development.
This handbook is one of the initiatives that came out of that workshop, since in order to truly have open development we need a place to record and discuss cross-project engineering matters which is open to _all_ contributors to the project.

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
