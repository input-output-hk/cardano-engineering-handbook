# Versioning Haskell packages

TODO: need to decide on a versioning policy

## Version bounds

### Scope

Library components of packages which are intended to be [distributed via a package repository](./distribution.md) MUST follow this policy.
Non-library components of such packages MUST also do so if it is anticipated that they will be used downstream.

(Inversely: components of packages which are not intended to be distributed, or non-library components of packages which are not intended to be used downstream do NOT need to follow this policy).

#### Examples

Package `pkg-a` contains a test suite and also an executable that is used to inspect binary blobs that can be produced by using `pkg-a`.
The test suite is not intended to be used downstream, but the executable is, since it can be helpful for users to diagnose the products of `pkg-a`.
Hence the test suite does not need bounds, but the executable does.

#### Rationale

Non-library components are much less critical, because they cannot be depended upon, and it is rarer that someone will want to e.g. run the tests or benchmarks for an upstream package.
However, it can still be the case that this happens, especially for executables, which are sometimes explicitly intended to be used by downstream users.
For this reason we tie the choice over whether to include bounds to the decision of the maintainer over whether the component is intended to be used downstream.

### Known-bad bounds

Version bounds (both upper and lower) MUST be included when they exclude versions of dependencies that the package is known not to work with.
In addition, if it is discovered that a version of a dependency does not work with a version of the package that has been released to a package repository, then the package maintainer SHOULD [publish](./distribution.md) a revision of the released version to include the new bound.

#### Examples 

**Discovering an incompatible version**

The developer of package `pkg-a`, which depends on library `pkg-b`, tries to build with `pkg-b-N`. 
This fails, so the developer should:

1. Add an upper bound of `pkg-b < N`, since `pkg-b-N` is known not to work; or
2. Fix `pkg-a` to work with `pkg-b-N`, and if this means that `pkg-a` will now no longer work with earlier versions of `pkg-b`, add a lower bound of `pkg-b >= N`.

And then optionally publish a revision of some released versions of `pkg-a` to add upper bounds on `pkg-b-N`

**Discovering an incompatible version for an upstream dependency**

The developer of package `pkg-c`, which depends on `pkg-a-M`, tries to build with `pkg-b-N`.
This fails when building `pkg-a`, so the developer of `pkg-c` notifies the developer of `pkg-a`. 
One of them should then:
1. Publish a revision `pkg-a-M` to have a bound of `pkg-b < N`; and 
2. Add a bound of `pkg-b < N` to the development branch of `pkg-a` if it still applies.

#### Rationale

Excluding dependency versions which are *known* not to work is a cheap way to convey information to downstream users.
It means that if they try to use the non-working version then they will get a solver error from cabal, instead of a compilation error.
It is common to discover this kind of version incompatibility information during development, and so this policy primarily insists that such information be recorded mechanically so that other people benefit from it.

### Speculative upper bounds

A package MAY include an upper bound that excludes the next major version of a dependency, even if it is not known whether the next major version will break the package (e.g. because it has not been released yet).

#### Examples

The package `pkg-b` depends on `pkg-a`. 
`pkg-a` tends to have breaking changes in releases, so the developer of `pkg-b` decides to pin their dependency on `pkg-a` using a caret bound, which implies a (speculative) upper bound of the next major version.

The package `pkg-c` depends on `pkg-b`.
The developer of `pkg-c` really doesn't want to have to deal with bumping the upper bound on `pkg-b`, so they just leave it off.
Note that due to the above policy about discovering incompatible versions, when a version of `pkg-b` is released that _does_ break `pkg-c`, one of the developers should publish revisions to exclude the breaking version of `pkg-b` from the released versions of `pkg-c`.

#### Rationale

Speculative upper bounds are controversial.
They have advantages (ensure that users get a working (if old) build plan; robustness against future changes), and disadvantages (often overly cautious; require large amounts of bound-relaxing to allow even "safe" new major versions).
There is no consensus amongst the Cardano engineering community about which is preferable, so we simply note that either approach is acceptable.

The cost of speculative upper bounds is somewhat lower for Cardano packages, since they are typically well-maintained and released frequently, so bounds relaxations can be made and released in a fairly timely fashion.
Nonetheless, they still impose costs, in particular requiring that downstream packages be released in order for new versions to be used.

### Intra-repository dependencies

A set of packages defined in the same source repository MUST include version bounds which are as tight as necessary to ensure that they function correctly when [distributed](./distribution.md) via a package repository.
It is not possible to give a fully-general rule for what bounds to use, but assuming that the packages are following something like PVP, typically pinning the major version is the right thing to do.

#### Examples

Packages `pkg-a` and `pkg-b` are defined in the same source repository, and `pkg-a` depends on `pkg-b`. 
`pkg-a` is at version 1.1.2, `pkg-b` is at version 2.4.3, and they both follow the PVP.
Then `pkg-a` should bound its dependency on `pkg-b` to `pkg-b == 2.4.*`

#### Rationale

Within a single source repository, packages are usually built with all the packages taken from a single commit of the source repository.
When the packages are built from a package repository, then cabal may try to build them with _different_ versions, so long as the bounds are satisfied.
For this reason it is important to have tight enough bounds on packages which are defined in the same source repository.
Typically it should be enough to pin the major version.

### Implied bounds

A component MAY omit bounds that it is otherwise required to have if those bounds are strictly implied by other dependencies that the package has within the _same_ source repository.

### Examples

Package `pkg-a` has both a library component and an executable component, both of which are used downstream.
Both components depend on `pkg-b-N`, and do not work with `pkg-b-(N+1)`, and the executable depends on the library.
In this case it is acceptable to only put a `pkg-b < N+1` bound on the library, because the executable component strictly depends on the library component of the same version, and the library component has the bound.

#### Rationale

It is common to have a repository which has many components/packages depending on some other package P.
It is tedious to require _every_ use of P to be well-bounded, especially since the components/packages in a repository should have tight bounds on each other, such that in practice bounding a single use of P should be enough to fix it for every package in the repository.
Some care should be taken, however: it is easy to _think_ that all packages in the repository are constrained, when in fact there may be a few that don't depend on the one that bounds P.
