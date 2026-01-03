pkgname=kanata-notifier
pkgver=1.0.0
pkgrel=1
pkgdesc="TCP notification bridge for Kanata"
arch=('any')
url="https://github.com/danielaca18/kanata-notifier"
license=('MIT')
depends=('jq' 'net-tools' 'libnotify' 'kanata')
source=("kanata-notifier.sh"
  "kanata-notifier.service")
sha256sums=('93b448eee06e38c3376532cb08f55e41a377e6dc7b4792a9c2bb43e6633f488c'
  '67bb56535a28699d626f55b4dddf42e3aff01287a94245c864271bc1edf93a77')

package() {
  install -Dm755 "${srcdir}/kanata-notifier.sh" "${pkgdir}/usr/bin/kanata-notifier"
  install -Dm644 "${srcdir}/kanata-notifier.service" "${pkgdir}/usr/lib/systemd/user/kanata-notifier.service"
}
