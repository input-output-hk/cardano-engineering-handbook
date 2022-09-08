# The Cardano Engineering Handbook

Goal:
* Record a general consensus at some point in time
* Record decision for things which require coordination
* Converge towards a common way of doing things (?)
* It's fine for some stuff to be aspirational

Target audience:
* This is supposed to apply to all repositories owned by the Cardano Open Source Consortium
* Projects that are abiding by those guidelines should link back to this document to make it obvious for contributors

# Project Management

## Policy

* Recommended documents: Contributing, CoC, Security.md....
* Project's roles: Maintainers vs. contributors

## Guidelines

> let's keept that out for the moment?

* Managing contributions
* Open-source community guidelines

# Haskell Stuff

## GHC version policy

> See Existing GHC version policy

## Package Metadata

* Security?

## Package Management

* Where/how to upload packages?
* PVP vs. SemVer

## Specific libraries policies

Examples:
* Do not force lens down the throat of consumners
* Use io-sim for IOs
* Use QC for property tests

## Release Process

* Specific guidelines around when/how to release a package
* Communication about the release
* There should exist a Changelog

# CI / Nix / Build Tools / Release Artifacts

> SRE Team needs to be able to consume artifacts

# Software Licensing

## Copyright attribution

## Choice of Licenses

# Versioning
# Security

## Dependencies tracing / Provenance

> Talk to Charles M.

* You should use tool X/Y/Z to identify vulnarabilites

## Audit Requirements

## C libraries in the node
