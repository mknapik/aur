pkgbase=mmk
pkgname=(mmk-cli mmk-git mmk-rng mmk-utils)
pkgver=0.0.1
pkgrel=1
arch=('any')
license=('MIT')

package_mmk-cli() {
    pkgdesc='Brave new world of cli tools.'
    depends=(
        'dfrs'
        'duf'
        'dust'
        'ncdu'
        'bat'
        'sd'
        'fd'
        'procs'
        'exa'
        'ripgrep'
    )
}

package_mmk-git() {
    pkgdesc='Git Terminal UI tools.'
    depends=(
        'git'
        'lazygit'
        'tig'
        'gitui'
        'git-delta'
    )
}

package_mmk-rng() {
    pkgdesc='Better random number generator'
    url='https://wiki.archlinux.org/index.php/Rng-tools'
    depends=('rng-tools')

    post_install() {
        systemctl enable --now rngd
    }
}

package_mmk-utils() {
    depends=(
        'entr'
    )
}