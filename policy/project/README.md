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

Individual projects SHOULD use the [default security file in this repository](https://github.com/input-output-hk/cardano-engineering-handbook/blob/main/SECURITY.md), either by copying it or linking to it.

### CODE OF CONDUCT

Individual projects SHOULD use the [default Code of Conduct in this repository](https://github.com/input-output-hk/cardano-engineering-handbook/blob/main/CODE-OF-CONDUCT.md), either by copying it or linking to it.

## Roles and responsibilities

A project SHOULD have a clear maintainer and backup maintainer.
The project documentation SHOULD clearly indicate these and any other roles and responsibilities in the project. 
For example, it may be useful to identify anyone who has the ability to help with CI issues, or to interact with other project-specific resources.

Having clear roles and responsibilities is very useful for contributors.
It is particularly important to be able to identify who has the right to merge PRs, and who holds ultimate technical authority over the project.

It's also important for the health of a project that there _is_ a nominated maintainer, and a backup so that if the maintainer stops being able to fill that role there is someone engaged who can step up.
Otherwise it can be the case that there is no maintainer, and nobody even notices!
