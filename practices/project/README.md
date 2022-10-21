# Project management

## Contributing documentation

Contributing documentation is [highly recommended](../../policy/project/index.html).
Contributing documentation is how we record the knowledge of how to work on the project day-to-day, rather than relying on it being passed on by word-of-mouth.
So having good, comprehensive contributing documentation is vital to having a wide group of contributors.

In addition to the information required by the [policy](../../policy/project/index.html), this is a (non-exhaustive!) list of topics that you may want to cover in your contributing documentation:

- How should a contributor build the project? Are there any special environment setup instructions? Are there any special tools that need to be used, e.g. code formatters?
- How are common maintenance tasks performed, e.g. updating dependencies?
- Does the project have any coding standards that should be followed?
- How is the project documented? What are the expectations on contributors for updating or adding documentation based on their changes?
- Under what circumstances does a change require a design discussion beforehand? Is a ticket sufficient? Does the design need to be signed off by someone before an implementation will be accepted?
- Under what circumstances does a change require a security audit? Whatever is written here should be compatible with the [audit policy](../../policy/security/audits.md), for most projects it should be sufficient to link to that.
- Are there any additional non-automated tests that need to be run for certain kinds of change, e.g. performance tests?
- Does the project have any requirements for how the Git history of changes is constructed, e.g. squashing changes, conventional commit messages?
- Are code reviews required? What are the contributors responsibilities in terms of soliciting and responding to such reviews?
- How does the project's CI work? How should a contributor interpret and diagnose failures?
- How are releases performed? 
- Are there any legal restrictions on the project? What are the contributors obligations with respect to those, e.g. signing CLAs?

Many of our projects have contributing documentation that you can use for inspiration:
- [`cardano-node`](https://github.com/input-output-hk/cardano-node/blob/master/CONTRIBUTING.rst)
- [`ouroboros-network`](https://github.com/input-output-hk/ouroboros-network/blob/master/CONTRIBUTING.md)
- [`cardano-ledger`](https://github.com/input-output-hk/cardano-ledger/blob/master/CONTRIBUTING.md)
- [`plutus`](https://github.com/input-output-hk/plutus/blob/master/CONTRIBUTING.adoc)
