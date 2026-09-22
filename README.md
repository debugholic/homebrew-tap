# debugholic/homebrew-tap

```
brew tap debugholic/tap
brew trust debugholic/tap
brew install litmus
```

Homebrew asks you to trust a third-party tap before it will load a formula
from it, because installing one runs its code. `brew trust --formula
debugholic/tap/litmus` narrows that to this formula alone.

## litmus

Mutation testing for Swift — changes your code on purpose and checks whether
your tests fail. See [debugholic/litmus](https://github.com/debugholic/litmus).

Built from source on install, so the first one takes a few minutes: SwiftSyntax
is a large dependency and this compiles it.
