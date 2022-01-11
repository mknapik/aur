pkgbase=mmk
pkgname=(
    mmk-cli
    mmk-git
    mmk-rng
    mmk-utils
    mmk-top-utils
    mmk-hw-utils
    mmk-network-utils
    mmk-docker
    mmk-browser
)
pkgver=0.0.1
pkgrel=1
arch=('any')
license=('MIT')
groups=(mmk)

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

package_mmk-hw-utils() {
    pkgdesc='Terminal and GUI tools for hardware identification.'
    depends=(
        'lshw'
        'hardinfo'
        'cpu-x'
    )
}

package_mmk-network-utils() {
    pkgdesc='Network traffic top and utils.'
    depends=(
        'slurm'
        'netwatch'
        'jnettop'
    )
}

package_mmk-top-utils() {
    depends=(
        'htop'
        'btop' # beautiful gradients
        'powertop'
        'atop'
        'iotop'
        's-tui' # top with temps and RPMs
    )
}

package_mmk-docker() {
    depends=(
        'docker'
        'docker-compose'
        'lazydocker'
        'ctop'
    )
}

package_mmk-browser() {
    depends=(
        'firefox'
        'hunspell-en_US'
        'hunspell-pl'
    )
}