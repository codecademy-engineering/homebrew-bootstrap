# Codecademy Engineering Bootstrap Tap

This is Codecademy's Homebrew "tap", allowing control over the specific versions of formulae we need.

> Homebrew’s versions should not be used to “pin” formulae to your personal requirements. You should instead create your own tap for formulae you or your organisation wish to control the versioning of
> 
> https://docs.brew.sh/Versions

## How do I install these formulae?

`brew install codecademy-engineering/bootstrap/<formula>`

Or `brew tap codecademy-engineering/bootstrap` and then `brew install <formula>`.

## Adding new Formulae

To add a formula version that is otherwise available in Homebrew core:

1. Create a new feature branch in your local bootstrap homebrew tap

Command for navigating to the local tap: `cd "$(brew --prefix)/Homebrew/Library/Taps/codecademy-engineering/homebrew-bootstrap"`

2. Use the `extract` command

```
brew extract --version 3.3.4 helm codecademy-engineering/bootstrap
```

Or you may manually write formulae in `./Formula/`.

3. Verify that this formula can be installed correctly with `brew install` and make a PR

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
