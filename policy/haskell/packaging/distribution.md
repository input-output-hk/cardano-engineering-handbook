# Distributing Haskell packages

TODO: the backup Hackage user is too IOG-specific.

## Distribution via CHaP

Cardano packages which are not [released to Hackage](#distribution-via-hackage) MUST be released to [Cardano Haskell Packages (CHaP)](https://github.com/input-output-hk/cardano-haskell-packages) as part of their release process.
The process for doing this is described in the CHaP README, any additional requirements described there MUST be followed.

Cardano packages which depend on other Cardano packages SHOULD acquire them from CHaP and not through the use of `source-repository-package`s ([exceptions](#use-of-source-repository-packages)).
The process for doing this is also described in the CHaP README.

### Rationale

CHaP offers us a clear distribution method with proper versioning based on actual releases, without requiring us to actually publish to Hackage.
This means we can be more relaxed in various ways (e.g. renaming packages) and also that we can publish patched versions of broken upstream dependencies unilaterally.

In the past we used `source-repository-package` stanzas exclusively for distribution.
This had all the problems discussed below, but also meant that downstream projects had to cobble together enormous lists of such stanzas in order to get a working build, which was very painful for `cardano-node`, and even worse for anything downstream of it.

## Distribution via Hackage

A Cardano package which:
1. Is stable
    - Vague, but implies that it is unlikely to be significantly re-worked, renamed, etc.
2. Has broad value to the community 
    - A test question is: would any non-Cardano package actually use it?
3. Has clear maintainership, ideally including individuals from multiple organizations
4. Reaches a high standard of documentation, testing, and open-source infrastructure
   - In particular, it should have high-quality examples of all the [recommended documents](../../project/README.html)
5. Is in full compliance with all [legal](../../legal/index.html) policies
6. Is developed in its own, standalone repository

MAY be released to Hackage.
The process for doing this is the normal process for releasing to Hackage.

A package which is released to Hackage that was previously released to CHaP MUST be released to Hackage with a higher version number than any version number under which it appears in CHaP.

The Hackage user [iogospo](https://hackage.haskell.org/user/iogospo) MUST be included as a maintainer of the package on Hackage.

### Rationale

Publishing to Hackage is desirable because it makes it easier for the wider community to benefit from our work.
We should do this, but only when we think they actually will benefit: when we have a stable, high-quality, useful packge to contribute.
Much of the list of criteria is designed to make the package look like a "normal" open-source Haskell package repository (of high quality).

## Use of `source-repository-package`s

A package which relies on `source-repository-package` stanzas to build MUST NOT be released to CHaP _or_ Hackage until they are removed.

Use of `source-repository-package` stanzas is acceptable (or even recommended) in the following circumstances:
- To experiment with a pre-release version of a Cardano package.
- To pull in a fixed version of a dependency (not necessarily a Cardano one) where the fix has not been released yet.

In the latter situation a long-lived or permanent fork can become unavoidable (e.g. if the upstream maintainer is unresponsive).
In this case, a patched version SHOULD be released to CHaP (and must be in order to allow a release of the package which depends on it), see the CHaP README for more details.
For packages which are released to Hackage, it may be necessary to request a Hackage takeover of the problematic dependency since we cannot unilaterally release a fixed version in that case.

### Rationale

`source-repository-package`s do not interact well with package repositories like CHaP or Hackage.
They implicitly assume that the `.cabal` file is a sufficient build recipe, but this is not true if the package relies on `source-repository-packge` stanzas.
Therefore, uploading such a package to CHaP or Hackage simply means it probably won't work for downstream users.

Additionally, `source-repository-package`s interact problematically with `cabal`, which always wants to rebuild them even if our tooling has ensured that a prebuilt version has been provided.
In the past this seriously interfered with our ability to provide developers with pre-cached development environments, since `cabal` would insist on rebuilding many of the dependencies.
