# Codecademy Engineering Bootstrap Tap

This is Codecademy's Homebrew "tap", allowing control over the specific versions of formulae we need.

> Homebrew’s versions should not be used to “pin” formulae to your personal requirements. You should instead create your own tap for formulae you or your organisation wish to control the versioning of
> 
> https://docs.brew.sh/Versions

## How do I install these formulae?

`brew install codecademy-engineering/bootstrap/<formula>`

Or `brew tap codecademy-engineering/bootstrap` and then `brew install <formula>`.

## Adding new Formulae

To add a formula version that is otherwise available in Homebrew core, use the `extract` command, e.g.:
```
brew extract --version 3.3.4 helm codecademy-engineering/bootstrap
```

Or you may manually write formulae in `./Formula/`.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
