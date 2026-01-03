PREFIX ?= /usr/local
USER_SYSTEMD_DIR ?= $(HOME)/.config/systemd/user

install:
	install -Dm755 kanata-notifier.sh $(DESTDIR)$(PREFIX)/bin/kanata-notifier
	install -Dm644 kanata-notifier.service $(USER_SYSTEMD_DIR)/kanata-notifier.service
	systemctl --user daemon-reload

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/kanata-notifier
	rm -f $(USER_SYSTEMD_DIR)/kanata-notifier
	systemctl --user daemon-reload
