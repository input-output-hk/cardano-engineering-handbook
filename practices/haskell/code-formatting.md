# Code formatting

It's generally a good idea to have an automatic code formatter, since it reduces arguments about stylistic matters (sometimes replacing them with arguments about the choice of formatter!).

Different projects use different formatters, but the common ones are:
- [`ormolu`](https://hackage.haskell.org/package/ormolu): a very opinionated formatter with no configuration that formats everything
    - Used by: `cardano-ledger`
- [`stylish-haskell`](https://hackage.haskell.org/package/stylish-haskell): a less opinionated and less complete formatter
    - Used by: `plutus`, `ouroboros-network`, `cardano-node`

