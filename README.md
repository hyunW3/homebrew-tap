# hyunW3/tap

Homebrew formulae for my tools.

```sh
brew install hyunW3/tap/session-snap
```

| Formula | |
|---|---|
| [session-snap](https://github.com/hyunW3/session-snap) | Save tmux sessions with the Claude Code conversation in each pane, and restore them after a reboot (Linux) |

## Updating a formula

session-snap's [release workflow](https://github.com/hyunW3/session-snap/blob/main/.github/workflows/release.yml)
updates `Formula/session-snap.rb` for every release, through a deploy key with write access to this
repository. To release:

```sh
gh workflow run release.yml -R hyunW3/session-snap -f version=X.Y.Z
```

By hand, set `url` to the new tag's archive and `sha256` to

```sh
curl -fsSL https://github.com/hyunW3/session-snap/archive/refs/tags/vX.Y.Z.tar.gz | sha256sum
```
