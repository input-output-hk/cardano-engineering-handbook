# GHC Version policy

Status: draft
Owner: Sylvain Henry

## Which version of GHC should my project be using?

At any given time there will be a current major version of GHC, and there may be a next major version of GHC.

All IOHK Haskell projects should build with both the current and the next major versions of GHC, unless they are specifically exempted.  New projects should build with the recommended 

The choice of minor version is up to the teams, but we encourage teams to move to later minor versions as they are released. In particular, when starting to support a new major version, teams should always use the latest minor version of that major version (unless it is blacklisted, see below).

## Are there any versions of GHC that should never be used?

Some versions of GHC are known to be broken in a critical way and should never be used. This may mean that teams need to stay on an older minor version if the newer ones are blacklisted.

## What is the current major version of GHC?

8.10

## What is the next major version of GHC?

There is no next major version at the moment.

## Which versions of GHC are blacklisted?

- 9.0.x: first minor had critical bugs. 9.0.2 was released just to avoid creating an “abandoned release” precedent, as 9.2 was released before it and should be preferred.

## How does the current major version change?

The process is:

- Announce next major version = X
- Three months for projects to update to build with X
    - The process may stop during this time, if e.g. a showstopper bug in X is discovered
    - During this time technical leadership will check on the progress regularly and assist projects which are struggling.
- Announce current version = X; no next major version

## How does the next major version change?

IOHK technical leadership will decide when to adopt new versions of GHC. This decision may be made on the basis of:

- Maturity of the release
- Bugs which block upgrading
- Bugs which will be resolved by upgrading
- Whether we are at key points in product release cycles
- Whether essential libraries have been upgraded to the new version
- Whether our custom tooling (e.g. GHCJS) is updated to work with it

## How do we account for upgrade work in project planning?

Following this policy is high-priority engineering work. Please convey this to your product managers, and direct them to talk to the CTO if this is a problem, or if they think you should be exempted.

## How do I get an exemption from this policy?

Ideally all projects would follow this policy, however exemptions will be considered on a case-by-case basis. 

Projects which are standalone and not dependencies/dependents of other projects are more likely to be exempted.

### List of current exemptions

There are no current exemptions.

## GHC version confidence status

| Version | Status | Comments |
| -- | -- | -- |
| 8.10.(4+) | Stable | Our current preferred version |
| 9.0.* | Unclear | Not widely deployed, avoid |
| 9.2.* | Stabilizing | Hopefully will become new preferred version. 9.2.2 looks like a good candidate already. |
