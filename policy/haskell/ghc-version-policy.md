# GHC Version policy

This policy explains which versions of GHC should be used in a project.

## Which version of GHC should my project be using?

At any given time there will be a current major version of GHC, and there may be a next major version of GHC, recorded in this document.

New projects should build with the current version.

The choice of minor version is less important, but in general projects SHOULD move to later minor versions as they are released. 
In particular, when adding support for a new major version, projects should always use the latest minor version of that major version (unless it is blacklisted, see below).

## Are there any versions of GHC that should never be used?

Some versions of GHC are known to be broken in a critical way and SHOULD NOT be used. 
This may mean that projectes need to stay on an older minor version if the newer ones are blacklisted.

## How do we upgrade to new versions?

The DevX team will proactively work on making code compatible with new compilers, and add CI (allowed to fail) for new compilers, as ressources permit. There is low priority
and no one should feel pressured to add compatibility into tight schedules. Due to the nature of dependencies (internal and external), this work is hard to predict, and DevX
will slowly work away at it. Once all code is compatible with a new compiler developers will be able to use a new compier _during development_, however _production builds_ will
still be built against our current compiler version, and the current compiler version _must_ be green in CI.

We will stay on the current compiler version, until cardano-node has signoff from performance and tracing, as well as quality engineering to move to the next version.  After a
grace persiod or 3mo afterwards, we can drop the old compiler version.

## What is the current major version of GHC?

8.10.

## What is the next major version of GHC?

The next major version of GHC is 9.2, after that GHC 9.6.

## Which versions of GHC are blacklisted?

- 9.0.x: first minor had critical bugs. 9.0.2 was released just to avoid creating an “abandoned release” precedent, as 9.2 was released before it and should be preferred.

## How does the next major version change?

Cardano technical leadership will decide when to adopt new versions of GHC. 
This decision may be made on the basis of:

- Maturity of the release
- Bugs which block upgrading
- Bugs which will be resolved by upgrading
- Whether we are at key points in product release cycles
- Whether essential libraries have been upgraded to the new version
- Whether our custom tooling (e.g. GHCJS) is updated to work with it

## GHC version confidence status

| Version | Status | Comments |
| -- | -- | -- |
| 8.10.(4+) | Stable | Current preferred version |
| 9.0.* | Unclear | Not widely deployed, avoid |
| 9.2.(4+) | Stable | Next preferred version. |

## Rationale

Different major versions of GHC can be substantially different.
In particular, programs may not compile with newer versions of GHC, or may have additional warnings.
Hence, it make it much harder to integrate projects if they are tested on different major versions of GHC.

That means that everything is much smoother if all the Caradano Haskell projects use the same version of GHC.
But that also means that when we change the major version, we need to change it for every project relatively synchronously.

Additionally, many versions of GHC have significant problems, particularly on specific platforms like Windows, and it's useful to have a central place to record decisions to avoid.
