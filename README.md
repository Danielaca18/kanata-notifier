# Kanata Notifier
TCP-based notification bridge for [https://github.com/jtroo/kanata](kanata).

## Dependencies
- `jq``
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

## Usage
1. Start kanata with TCP enabled:
```bash
  kanata --port 5829
```

2. Enable kanata-notifier:
```bash
  systemctl --user enable --now kanata-notifier.service
```
