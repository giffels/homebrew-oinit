# giffels/homebrew-oinit

Homebrew tap providing a cask for the [oinit](https://github.com/ssh-oidc/oinit) client on macOS.

## Installation

```sh
brew install --cask giffels/oinit/oinit
```

## About oinit

oinit is a client tool to use SSH certificates with OpenSSH via OpenID
Connect. See the [project page](https://codebase.helmholtz.cloud/m-team/oidc/ssh/oinit/)
for details.

This cask installs the client binary `oinit` and its man pages. The server
components (`oinit-ca`, `oinit-shell`, `oinit-switch`) are Linux-only and
are not part of this cask.

## Updating

```sh
brew upgrade --cask oinit
```

New releases are published by updating `Casks/oinit.rb` (version and sha256
values are taken from the [oinit releases](https://github.com/ssh-oidc/oinit/releases)).
