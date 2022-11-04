# Testing

This describes various testing practices which are in use in the Cardano project, along with examples for reference and links to commonly used libraries.

## Unit testing

Unit testing is standard practice in the industry and Cardano is no exception.

### Libraries

- [`tasty`](https://hackage.haskell.org/package/tasty): a straightforward testing framework, with many libraries that provide additional functionality
- [`hspec`](https://hackage.haskell.org/package/tasty): another testing framework, with a BDD-style specification style

## Property-based testing

Cardano makes extensive use of property-based testing. 
We believe it to be an excellent technique that allows us to get much higher testing assurance that we would be able to otherwise.

### Examples

- [`cardano-ledger`](https://github.com/input-output-hk/cardano-ledger) uses QuickCheck to generate both transactions and "traces", in order to test the ledger rules.

### Libraries

- [`QuickCheck`](https://hackage.haskell.org/package/QuickCheck): the original property-based testing library
- [`hedgehog`](https://hackage.haskell.org/package/hedgehog): a more recent property-based testing library
- [`quickcheck-dynamic`](https://hackage.haskell.org/package/quickcheck-dynamic): a library for testing stateful systems using QuickCheck

## Conformance testing

Often our projects have specifications or research documents as well as an implementation.
It is useful to test whether the specification conforms to the implementation.
This sort of test suite is also useful if there are multiple implementations, as they can all share the use of the conformance test suite.

### Examples

- [plutus](https://github.com/input-output-hk/plutus) has a hand-written conformance test suite.
