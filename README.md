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

Mutation testing and flaky test detection for Swift — changes your code on
purpose and checks whether your tests fail, and reruns your tests to find the
ones whose result changes. See [debugholic/litmus](https://github.com/debugholic/litmus).

Installs the universal binary, for Apple silicon and Intel, attached to the
latest release: nothing is compiled on your machine.
