# Project management

## Subscribing to the Cardano Engineering Handbook

A project SHOULD explicitly indicate that they follow the Cardano Engineering Handbook in their README.
Projects MAY do this by using a badge.

Consult [`shields.io`](https://shields.io/) for more information about how to embed this badge in your README.
- Base badge URL: `https://img.shields.io/badge/policy-Cardano%20Engineering%20Handbook-informational`
- Badge URL with link: `https://img.shields.io/badge/policy-Cardano%20Engineering%20Handbook-informational?link=https://input-output-hk.github.io/cardano-engineering-handbook`
- Markdown fragment: `[![handbook](https://img.shields.io/badge/policy-Cardano%20Engineering%20Handbook-informational)](https://input-output-hk.github.io/cardano-engineering-handbook)`

Projects which subscribe to the Cardano Engineering Handbook SHOULD track any deviations from policy in some appropriate public location, such as their issue tracker.

## Recommended documents

A project SHOULD contain the following documents:
- `README`
- `CONTRIBUTING`
- `SECURITY`
- `CODE_OF_CONDUCT`
- A `CHANGELOG` (if the project includes multiple packages or similar, then one `CHANGELOG` per package may be more appropriate)

The documents SHOULD be easily accessible and discoverable, ideally by being put in standard locations.

The content of these documents is largely up to the project contributors. 
The most important thing is that they exist, we believe that if they exist, people will mostly want to make them good.

In the following, when we say that a document should include information, this can either mean it includes it directly, or that it clearly links to where it can be found.

### CONTRIBUTING

A `CONTRIBUTING` document SHOULD include the following information:
- [Roles and responsibilities](#roles-and-responsibilities) for the project.
- The fact that the project follows this Handbook.

See [the practices section](../../practices/project/index.html) for a broader discussion of what things are good to include in contributing documentation.

### SECURITY

A `SECURITY` document MUST provide security@iohk.io as the contact email for security issues.

Individual projects SHOULD use the [default security file in this repository](https://github.com/input-output-hk/cardano-engineering-handbook/blob/main/SECURITY.md), either by copying it or by creating a `SECURITY` document that just links to it.

### CODE OF CONDUCT

Individual projects SHOULD use the [default Code of Conduct in this repository](https://github.com/input-output-hk/cardano-engineering-handbook/blob/main/CODE-OF-CONDUCT.md), either by copying it or creating a `CODE_OF_CONDUCT` document that just links to it.

## Roles and responsibilities

A project SHOULD clearly identify any people who perform key functional roles.
For example, most projects will have people in the following functional roles:
- People who can merge PRs
- People who can do any code review that the project requires
- People who can adjudicate technical (or other) disputes
- People who can release the software
- People who can resolve issues with CI

This is not an exhaustive list! 
Projects should list the roles that make sense for them.

A project MAY identify some individual or individuals as the "maintainers".
The meaning of this is not specified, as it is a common term in usage throughout the open-source world with various meanings, but it typically indicates that they are a "default" holder of functional roles.

A project SHOULD also ensure that key functional roles have succession plans.
In the simplest case this can just consist of ensuring that multiple maintainers are listed or that a backup maintainer is listed.

### Examples

Projects can present this information however makes sense for them.
For example, the following would be an acceptable presentation of this information for a moderately complex project:

> The key maintainer for this project is Alice, who has final technical authority and handles releases.
> The exception is component C where Bob is the authority.
> Bob is also the backup maintainer in case Alice becomes unavailable.
> 
> The rest of the regular contributors are Dave, Edna, and Fahran, all of whom can merge PRs and be asked to review them.
> In addition, the CODEOWNERS file identifies specific reviewers who are required for PRs that affect specific components.
> 
> The CI runs on Github Actions, so any contributor with write permissions can restart workflows.
> Edna wrote the workflow specifications, so is the best person to help with problems, otherwise ask Dave.

For a small project it would also be sufficient to write this:

> This project is maintained by Gareth.
> Hannah is the backup maintainer.

### Rationale

Having clear roles and responsibilities is very useful for contributors.
As they progress through the contribution workflow, it is important that they be able to identify people who can help them when they hit typical roadblocks, such as getting code reviews, merging PRs or adjudicating technical disputes.

It's also important for the health of a project that for important roles there is some kind of plan for what to do in case the people who currently occupy them stop being able to do so.
Otherwise it can be the case that nobody is maintaining a project, and nobody even notices!

However, most of the details are project-specific. 
Exactly what roles make sense; who performs them; whether or not that descends from them having some other official role or not; what kind of backup plans make sense; all of these things can vary. 
For example, all of the following are reasonable project organization structures that we do not want to preclude:
- A small group of co-maintainers who do everything.
- A larger but very egalitarian team that attempts to share all responsibilities equally.
- A very formalised team with explicit team roles and leadership positions.
- A project which has multiple sub-components which have very different organization structures (e.g. a big project with a formal methods component that has a single maintainer)

The main goals are just for projects to:
1. Identify the state of their roles and responsibilities explicitly, rather than relying on people just picking it up; and
2. Make some effort to ensure that key roles don't go unfilled.

