# CI

## Exercise supported platforms and build methods

If your project claims to support platform X then it should build on platform X in CI.
Otherwise it is very easy for support to be lost without noticing, which may only be discovered much later, perhaps by a user.

Similarly, if you claim to support a particular build method (e.g. bare `cabal` on Linux), then you should also exercise this in your CI.

