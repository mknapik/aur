pkgbase=mmk
pkgname=(
    mmk-cli
    mmk-git
    mmk-git-extra
    mmk-dev-cli-utils
    mmk-rng
    mmk-utils
    mmk-top-utils
    mmk-hw-utils
    mmk-network-utils
    mmk-docker
    mmk-browser
    mmk-fonts
    mmk-intel
    mmk-laptop
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
package_mmk-git-extra() {
    depends=(
        'meld' # difftool GUI diff tool
    )
}

package_mmk-dev-cli-utils() {
    depends=(
        'jq'
        'yq'
        'xq'
        'fx'
        'jiqy'
    )
}

package_mmk-rng() {
    pkgdesc='Better random number generator'
    url='https://wiki.archlinux.org/index.php/Rng-tools'
    depends=('rng-tools')

    post_install() {
        systemctl enable --now rngd
    }
    pre_remove() {
        systemctl disable --now rngd
    }
}

package_mmk-utils() {
    depends=(
        'entr'
        'hyperfine'
    )
}

package_mmk-hw-utils() {
    pkgdesc='Terminal and GUI tools for hardware identification.'
    depends=(
        'lshw'
        'hardinfo'
        'cpu-x'
        'turbostat' # turbostat can display the frequency, power consumption, idle status and other statistics of the modern Intel and AMD CPUs. 
    )
}

package_mmk-network-utils() {
    pkgdesc='Network traffic top and utils.'
    depends=(
        'slurm'
        'netwatch'
        'jnettop'
        'gnu-netcat'
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
package_mmk-fonts() {
    depends=(
        'adobe-source-code-pro-fonts'
        'nerd-fonts-complete'
        'ttf-fira-code' # monospace ligatures font
        'otf-fira-code'
    )
}

package_mmk-sway() {
    depends=(
        'otf-font-awesome' # glyph font for Sway icons
        'polkit-gnome'
    )
}

package_mmk-intel() {
    depends=(
        'thermald'
    )
    post_install() {    
        systemctl enable --now thermald
    }
    pre_remove() {
        systemctl disable --now thermald
    }
}


package_mmk-laptop() {
    depends=(
        'tlp' # power management (battery/ac)
    )
    post_install() {    
        systemctl enable --now tlp
        systemctl mask systemd-rfkill.service
        systemctl mask systemd-rfkill.socket
    }
    pre_remove() {
        systemctl disable --now tlp
    }
}

