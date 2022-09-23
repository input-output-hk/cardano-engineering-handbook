# Project management

- TODO: security contact address is IOHK-specific

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

### SECURITY

A `SECURITY` document MUST provide security@iohk.io as the contact email for security issues.

## Roles and responsibilities

A project SHOULD have a clear maintainer and backup maintainer.
The project documentation SHOULD clearly indicate these and any other roles and responsibilities in the project. 
For example, it may be useful to identify anyone who has the ability to help with CI issues, or to interact with other project-specific resources.

Having clear roles and responsibilities is very useful for contributors.
It is particularly important to be able to identify who has the right to merge PRs, and who holds ultimate technical authority over the project.

It's also important for the health of a project that there _is_ a nominated maintainer, and a backup so that if the maintainer stops being able to fill that role there is someone engaged who can step up.
Otherwise it can be the case that there is no maintainer, and nobody even notices!
