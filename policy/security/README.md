
- TODO: Need a contributor from our security teams to help write these.
- TODO: security team to consider adopting [ASF policy](https://www.apache.org/security/committers.html)
- TODO: Adapt draft audit requirements doc into the handbook.
- TODO: Write a policy on foreign libraries.
- DRAFTED: Write a policy on responsible disclosure.

# Security

Maintaining the security of the Cardano blockchain is a paramount
concern.  In any open source project there is a tension between maximising security and maintaining openness/transparency.  Resolving this tension is especially important where some upgrades can only be carried out simultaneously (via a "hard fork" in Cardano), requiring a balance between the need for security and the desire for clear and precise communication/explanation of code changes.
Consistent with other blockchain projects (e.g. [Ethereum](https://geth.ethereum.org/docs/vulnerabilities/vulnerabilities)), we have therefore adopted a
policy of responsible notification, responsible development, and responsible disclosure of
security patches that prioritises security, but aims to provide clarity.  Given the open nature of Cardano development, this requires particular
care over how security issues are handled by code maintainers.


## Security Issues

Standard IOG security procedures MUST be followed when a security concern is identified. 
In particular, possible security concerns MUST be notified via email to `security@iohk.io` or via IOG internal slack to `@charles.morgan`.

All security concerns WILL be evaluated.  If a vulnerability is deemed
to exist, then a fix WILL be developed and released.  All care WILL be
taken not to expose the nature of the vulnerability, both during
code development and as part of the release.  This may include using a private
fork for the  development of the fix, including the fix as part of another code commit,
taking appropriate care when writing code comments/descriptions, silent fixes, or other techniques.


## Responsible Disclosure


In order to avoid calling attention to a vulnerability that may lead to a possible security exploit before the fix is fully deployed, it will usually be necessary to "silently" fix the vulnerability.   This is particularly important in Cardano, compared to e.g. an operating system or application, since such fixes may only be enacted at (relatively infrequent) hard forks, nodes must connect to public network infrastructure, and all nodes will remain vulnerable until they are patched (the usual approach of a gradual security upgrade will not generally be possible).  

### Silent Fixes

Attention MUST NOT be called to security vulnerabilities before the vulnerability is fixed and deployed.  **Silent fixes** MUST be used when necessary.  That is:

- the code SHOULD be obscured so that its purpose is not immediately clear;
- comments, commit messages and documentation MUST not expose the security vulnerability;
- a code patch SHOULD be included as part of a larger bundle of (possibly unrelated) changes;
- the description of the fix SHOULD be intentionally vague, omitted or even misleading;
- developers MUST refrain from commenting on discussions relating to the fix where this would call attention to the vulnerability.

In all cases, security concerns override transparency considerations.

### Disclosure Procedures

If we silently fix a vulnerability and a hard fork is needed to enable the fix then:

- we SHOULD publish the details about the vulnerability 4-8 weeks after the hard fork

If we silently fix a vulnerability and a hard fork is not needed to enable the fix then:

- After 4-8 weeks, we SHOULD disclose that the release contained a security-fix;
- After an additional 4-8 weeks, we SHOULD publish the details about the vulnerability
