# Versioning Haskell packages

TODO: need to decide on a versioning policy

## Version bounds

**Scope**

Library components of packages which are intended to be [distributed via a package repository](./distribution.md) MUST follow this policy.
Non-library components of such packages MUST also do so if it is anticipated that they will be used downstream.

(Inversely: components of packages which are not intended to be distributed, or non-library components of packages which are not intended to be used downstream do NOT need to follow this policy).

**Known-bad bounds**

Version bounds (both upper and lower) MUST be included when they exclude versions of dependencies that the package is know not to work with.
In addition, if it is discovered that a version of a dependency does not work with a version of the package that has been released to a package repository, then the package maintainer SHOULD revise the released version to include the new bound.

**Speculative upper bounds**

A package MAY include an upper bound that excludes the next major version of a dependency, even if it is not known that the next major version will the package (e.g. because it has not been released yet).

**Cardano dependencies**

A package MUST pin the major version of any Cardano package that it depends on.

**Intra-repository dependencies**

A set of packages defined in the same source repository MUST include version bounds which are as tight as necessary to ensure that they function correctly when distributed via a package repository.
Typically this will mean pinning the major version.

### Examples

Package P contains a test suite and also an executable that is used to inspect binary blobs that can be produced by using P.
The test suite is not intended to be used downstream, but the executable is, since it can be helpful for users to diagnose the products of P.
Hence the test suite does not need bounds, but the executable does.

The developer of package P, which depends on library L, tries to build with `L-N`. 
This fails, so the developer either:
1. Adds an upper bound of `L < N`, since `L-N` is known not to work; or
2. Fixes P to work with `L-N`, and if this means that P will now no longer work with earlier versions of L, adds a lower bound of `L >= N`.

The developer of package Q, which depends on `P-M`, tries to build with `L-N`.
This fails when building P, so the developer of Q notifies the developer of P. 
The developer of P then:
1. Revises `P-M` to have a bound of `L < N`; and 
2. Adds a bound of `L < N` to the development branch of P if it still applies.

Packages P and Q are defined in the same source repository, and P depends on Q. 
Package P is at version 1.1.2, package Q is at version 2.4.3, and they both follow the PVP.
Then P should bound its dependency on Q to `Q == 2.4.*`

### Rationale

Excluding dependency versions which are *known* not to work is a cheap way to convey information to downstream users.
It means that if they try to use the non-working version then they will get a solver error from cabal, instead of a compilation error.
It is common to discover this kind of version incompatibility information during development, and so this policy primarily insists that such information be recorded mechanically so that other people benefit from it.

Non-library components are much less critical, because they cannot be depended upon, and it is rarer that someone will want to e.g. run the tests or benchmarks for an upstream package.
However, it can still be the case that this happens, especially for executables, which are sometimes explicitly intended to be used by downstream users.
For this reason we tie the choice over whether to include bounds to the decision of the maintainer over whether the component is intended to be used downstream.

Speculative upper bounds are controversial.
They have advantages (ensure that users get a working (if old) build plan; robustness against future changes), and disadvantages (often overly cautious; require large amounts of bound-relaxing to allow even "safe" new major versions).
There is no consensus amongst the Cardano engineering community about which is preferable, so we simply note that either approach is acceptable.

Cardano packages themselves typically both a) make frequent breaking changes and b) have important behavioural differences between major versions.
For this reason we recommend that projects explicitly pin the major version of any Cardano packages that they depend on.

Within a single source repository, packages are usually built with all the packages taken from a single commit of the source repository.
When the packages are built from a package repository, then cabal may try to build them with _different_ versions, so long as the bounds are satisfied.
For this reason it is important to have tight enough bounds on packages which are defined in the same source repository.
Typically it should be enough to pin the major version.
