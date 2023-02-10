# Version Control System

Projects MUST use a _Version Control System_ to ensure changes to the code source are properly tracked and individual changes can be identified and referred to easily.
[git](https://git-scm.com) is the most widespread tool in use those days but there are many good tools to choose from.

When releasing a new version of a software package, projects MUST use _tags_ or any similar mechanism -- symbolic reference -- to identify in the VCS the revision that corresponds to the newly released package.
This tag MUST match the version number of the released package such that it's straightforward to link both.

Projects SHOULD document their tagging convention.

* Version `1.2.3` of a package `X` could be tagged as `1.2.3` or `v1.2.3` or `X-1.2.3`, etc.
* Project `P` releasing two packages `X` and `Y` respectively with version `1.2.3` and `2.3.4` could tag the same revision with `X-1.2.3` and `Y-2.3.4`
