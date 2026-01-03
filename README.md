# Kanata Notifier

TCP-based notification bridge for [kanata](https://github.com/jtroo/kanata).

## Dependencies

- `jq`
- `net-tools`
- `libnotify`
- `kanata`

## Installation

### Arch Linux

```bash
  git clone https://github.com/Danielaca18/kanata-notifier
  cd kanata-notifier
  makepkg -si
```

### Manual

```bash
  sudo make install
```

### AUR Support

I haven't officially published this to the AUR yet because I did not want to risk polluting the AUR if this package will only be used by myself.

**If you want to see this on the AUR for easier updates, please give this repo a ⭐ Star.** If the project hits 10-15 stars (or someone opens an issue requesting it), I'll push it to the AUR.

## Usage

1. Start kanata with TCP enabled:

```bash
  kanata --port 5829
```

1. Enable kanata-notifier:

```bash
  systemctl --user enable --now kanata-notifier.service
```
