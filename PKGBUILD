pkgname=kanata-notifier
pkgver=1.0.0
pkgrel=1
pkgdesc="TCP notification bridge for Kanata"
arch=('any')
url="https://github.com/danielaca18/kanata-notifier"
license=('MIT')
depends=('jq' 'net-tools' 'libnotify' 'kanata')
source=("kanata-notifier.sh"
  "kanata-notifier.service"
  "LICENSE")
sha256sums=('853053ddccf2751715bbcc1b4f600043a00eb58946f0763374e1ecba0f7050c8'
            'ddd77945b00bf48040448db7d1a8dc2c12d345ccedb41dc98f0a5406b96fcd5f'
            '580c8b75eb40e4a9060067c4a62ad09f4871dfa1b2d8da1aecbdebcca7a3e263')

package() {
  # install notifier script
  install -Dm755 "${srcdir}/kanata-notifier.sh" "${pkgdir}/usr/bin/kanata-notifier"

  # install service to systemd
  install -Dm644 "${srcdir}/kanata-notifier.service" "${pkgdir}/usr/lib/systemd/user/kanata-notifier.service"

  # install license
  install -Dm644 "${srcdir}/LICENSE" "${pkgdir}/usr/share/license/${pkgname}/LICENSE"
}
