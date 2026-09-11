# hyunW3/tap

Homebrew formulae for my tools.

```sh
brew install hyunW3/tap/session-snap
```

| Formula | |
|---|---|
| [session-snap](https://github.com/hyunW3/session-snap) | Save tmux sessions with the Claude Code conversation in each pane, and restore them after a reboot (Linux) |

## Updating a formula

After tagging a new release, point the formula at it: set `url` to the new tag's archive, and `sha256` to

```sh
curl -fsSL https://github.com/hyunW3/session-snap/archive/refs/tags/vX.Y.Z.tar.gz | sha256sum
```
