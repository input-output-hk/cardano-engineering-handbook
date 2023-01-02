## GitHub Actions

If you are using GitHub Actions it SHOULD be configured so that pull requests from forks will trigger it.
This is especially important if the maintainer set up branch protection rules which prevent merging PRs which did not pass CI.
This can be also confusing when there are no branch protection rules, in which case it could lead to accepting a PR which silently breaks the code.
For these reasons we recommend being permissive on `pull_request` event and explicit on which branches trigger CI on `push` event, e.g.

```yaml
on:
  pull_request:
  push:
    branches:
      - main
```
which will trigger only `pull_request` event for pull requests, but not `push` event when a PR is created.

## Merge Trains

Merge trains allow to merge multiple outstanding pull request and check if all the changes are compatible.
They usualy merge into a temporary branch which SHOULD be used to run CI on,  as a side effect the CI infrastructure is triggered less often as PRs are batched.  Examples of merge trains include: [`bors`], [`mergify`] or GitHub's own [`merge queue`]s.

Specific configuration depends on the application one is using,  for example when using [`bors`] one it's a good idea to configure GitHub Actions with:

```yaml
on:
  pull_request:
  push:
    branches:
      - 'bors/*'
```

## Running GitHub Actions for external contributors

GitHub allows to configure which actions can run automatically from public forks.
The maintainer ought to decide what level of security is required, please see the [GitHub documentation][workflows-from-public-forks].


[`bors`]: https://github.com/bors-ng/bors-ng
[`mergify`]: https://mergify.com/
[`merge queue`]: https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/configuring-pull-request-merges/managing-a-merge-queue
[workflows-from-public-forks]: https://docs.github.com/en/actions/managing-workflow-runs/approving-workflow-runs-from-public-forks


