# Homebrew Tap for Nool Notch

Install the Apple Silicon build of [Nool Notch](https://github.com/nail00749/nool_notch) on macOS 14 or newer:

```bash
brew tap nail00749/tap
brew install --cask --no-quarantine nool-notch
```

Upgrade later with:

```bash
brew update
brew upgrade --cask nool-notch
```

The current release is ad-hoc signed and not notarized, so `--no-quarantine` is required for the initial install. A notarized Developer ID build can remove that requirement in a future release.
