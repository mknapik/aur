pkgbase=mmk
pkgname=(
    mmk-base
    mmk-base-gui
    mmk-browser
    mmk-communication
    mmk-desktop
    mmk-dev-cli
    mmk-dev-gui
    mmk-docker
    mmk-fonts
    mmk-fs
    mmk-git
    mmk-git-gui
    mmk-software-gui
    mmk-hw-utils
    mmk-hw-control
    mmk-hw-gui
    mmk-intel
    mmk-laptop
    mmk-laptop-power
    mmk-neocli
    mmk-network
    mmk-network-utils
    mmk-network-gui
    mmk-rng
    mmk-arch
    mmk-security
    mmk-shell
    mmk-sound
    mmk-sway
    mmk-top-utils
    mmk-utils
    mmk-video-amd
    mmk-yubikey
    mmk-build
)
pkgver=0.0.1
pkgrel=1
arch=(any)
license=(MIT)
groups=(mmk)


package_mmk-base-gui() {
    depends=(
        mmk-hw-gui
        mmk-git-gui
        mmk-software-gui
        mmk-network-gui
        mmk-fonts
    )
}

package_mmk-base() {
    pkgdesc='Best practices for setting up an Arch after installation. '
    depends=(
        mmk-shell
        mmk-rng
        mmk-ntp
        mmk-network
        mmk-bt

        mmk-neocli
        mmk-utils
        mmk-top-utils
        mmk-hw-utils
        mmk-hw-control
        mmk-network-utils

        mmk-docker
        mmk-dev-cli
        mmk-dev
        mmk-git

        mmk-fs
        mmk-arch
        mmk-browser
        mmk-communication
        mmk-security
        mmk-sound
        mmk-sway
        mmk-mailspring
        mmk-backup
    )
}

package_mmk-laptop() {

    depends=(
        mmk-laptop-power
        mmk-intel

        mmk-base
        mmk-base-gui
    )
}

package_mmk-desktop() {
    depends=(
        mmk-video-amd

        mmk-base
        mmk-base-gui
    )
}

package_mmk-shell() {
    install="$pkgname.install"
    depends=(
        fish
        fisher
        tmux
    )
}

package_mmk-neocli() {
    pkgdesc='Brave new world of cli tools.'
    depends=(
        dfrs
        duf
        dust
        ncdu
        bat
        sd
        fd
        procs
        exa
        ripgrep
    )
}

package_mmk-git() {
    pkgdesc='Git Terminal UI tools.'
    depends=(
        lazygit
        tig
        gitui
        git-delta
    )
}
package_mmk-git-gui() {
    depends=(
        meld # difftool GUI diff tool
    )
}

package_mmk-dev() {
    depends=(
        ipcalc
        android-udev
        hyperfine
        pass-otp
        gradle
        hadolint-bin
        ktlint
        lefthook
    )
}

package_mmk-dev-gui() {
    depends=(
        intellij-idea-community-edition
        keybase-gui
    )
}

package_mmk-dev-cli() {
    depends=(
        aws-cli-v2-bin
        aws-session-manager-plugin
        aws-vault
        
        glow-bin
        jq
        yq
        xq
        fx
        jwt-cli-bin
        jiq-bin
        asdf-vm
        direnv
        tealdeer
        httpie
    )
}

package-mmk-optional-cli() {
    depends=(
        visidata
        tabview-git # CMD tools for CSV viewing.
        speedtest-cli
        cmatrix

        chrysalis-bin # Kaleidoscope, Chrysalis fo Keyboard.io
    )
}

package_mmk-rng() {
    install="$pkgname.install"
    pkgdesc='Better random number generator'
    url='https://wiki.archlinux.org/index.php/Rng-tools'
    depends=(rng-tools)
}

package_mmk-arch() {
    depends=(
        dialog etc-update
        dpkg
        pacman-contrib

        grub
    )
}

package_mmk-fs() {
    depends=(
        exfat-utils
    )
}

package_mmk-utils() {
    depends=(
        entr
        hyperfine
        zoxide # jump
        mediainfo
        skim
        fzf
        ranger
        etckeeper # vcs for /etc
        neofetch xorg-xwininfo
    )
}

package_mmk-mailspring() {
    depends=(
        mailspring
        execstack dpkg rpm
    )
}

package_mmk-ntp() {
    install="$pkgname.install"
    depends=(
        ntp
    )
}

package_mmk-virtualization() {
    install="$pkgname.install"
    depends=(
        kvm
        libvirt
        qemu
        virt-manager

        # network
        iptables-nft dnsmasq # NAT/DHCP networking
        bridge-utils
        openbsd-netcat
        net-tools

        dmidecode

        vagrant
    )
}

package_mmk-printer() {
    install="$pkgname.install"
    depends=(
        system-config-printer
        xsane
        hplip
        cups
        cups-pdf
    )
}

package_mmk-hw-gui() {
    depends=(
        gsmartcontrol
        gwakeonlan
        guvcview
    )
}

package_mmk-hw-control() {
    depends=(
        gammastep
        brillo
        light
        ddcutil
    )
}

package_mmk-hw-utils() {
    pkgdesc='Terminal and GUI tools for hardware identification.'
    depends=(
        hwinfo
        geekbench
        lshw
        hardinfo
        cpu-x
        turbostat # frequency, power consumption, idle status and other statistics of the modern Intel and AMD CPUs
    )
}

package_mmk-backup() {
    pkgdesc='Backup strategy'
    depends=(
        borgomatic
    )
}

package_mmk-bt() {
    install="$pkgname.install"
    depends=(
        blueman
        bluez
        bluez-utils
        bluetooth-headset-battery-level-git
        libldac
    )
}

package_mmk-network-gui() {
    depends=(
        gwakeonlan
    )
}

package_mmk-network() {
    depends=(
        nm-connection-editor
        networkmanager-strongswan
        networkmanager-l2tp
        wireguard-tools

        # bonjour/zeroconf network printer software
        avahi 
        nss-mdns
    )
}

package_mmk-network-utils() {
    pkgdesc='Network traffic top and utils.'
    depends=(
        ipcalc
        iperf3
        inetutils # telnet
        iftop
        slurm
        netwatch
        jnettop
        gnu-netcat
        bandwhich
    )
}

package_mmk-top-utils() {
    depends=(
        bottom
        htop
        btop # beautiful gradients
        powertop
        atop
        iotop
        s-tui # top with temps and RPMs
    )
}

package_mmk-docker() {
    depends=(
        docker
        docker-compose
        lazydocker
        ctop
        docker-credential-secretservice # Keep docker credentials in Keyring
        container-diff
    )
}

package_mmk-browser() {
    depends=(
        firefox
        hunspell-en_US
        hunspell-pl
    )
}
package_mmk-fonts() {
    depends=(
        adobe-source-code-pro-fonts
        nerd-fonts-complete
        ttf-fira-code # monospace ligatures font
        otf-fira-code
        noto-fonts
        noto-fonts-emoji
    )
}

package_mmk-sway() {
    depends=(
        sway
        swaybg
        swayidle
        waybar
        swaylock-effects
        swayr-git
        wlogout # logout menu
        
        xorg-xwayland

        rofi-calc
        rofi-emoji
        rofi-dmenu
        rofi-lbonn-wayland-git # rofi
        
        bluetooth-headset-battery-level-git

        dex
        kanshi

        wob
        avizo

        zenity
        alacritty

        wl-clipboard
        wl-clipboard-x11 # xclip xsel for wayland
        clipman # Clipboard history manager

        otf-font-awesome # glyph font for Sway icons
        polkit-gnome
        wf-recorder-git
        sxiv
        gammastep
        udiskie

        arandr

        kdeconnect

        adwaita-dark
        arc-gtk-theme
        arc-icon-theme

        nautilus
        nautilus-sendto
        
        gparted
        gnome-calculator
        gnome-color-manager
        gnome-disk-utility
        gnome-logs
        gnome-menus
        gnome-nettool
        gnome-remote-desktop
        gnome-system-monitor
        gnome-user-share
        gnome-video-effects

        xdg-desktop-portal-wlr


        xorg-bdftopcf
        xorg-iceauth
        xorg-mkfontscale
        xorg-server
        xorg-server-xvfb
        xorg-sessreg
        xorg-setxkbmap
        xorg-smproxy
        xorg-x11perf
        xorg-xauth
        xorg-xcmsdb
        xorg-xcursorgen
        xorg-xdpyinfo
        xorg-xdriinfo
        xorg-xev
        xorg-xgamma
        xorg-xhost
        xorg-xinit
        xorg-xinput
        xorg-xkbcomp
        xorg-xkbevd
        xorg-xkbutils
        xorg-xkill
        xorg-xlsatoms
        xorg-xlsclients
        xorg-xmodmap
        xorg-xpr
        xorg-xprop
        xorg-xrandr
        xorg-xrdb
        xorg-xrefresh
        xorg-xset
        xorg-xsetroot
        xorg-xvinfo
        xorg-xwayland
        xorg-xwd
        xorg-xwininfo
        xorg-xwud
    )
}

package_mmk-intel() {
    install="$pkgname.install"
    depends=(
        thermald
    )
}


package_mmk-laptop-power() {
    install="$pkgname.install"
    depends=(
        tlp # power management (battery/ac)
    )
}

package_mmk-communication() {
    depends=(
        zoom
        discord
    )
}

package_mmk-security() {
    depends=(
        mmk-yubikey
        authy
    )
}
package_mmk-yubikey() {
    install="$pkgname.install"
    depends=(
        yubico-pam
        yubikey-manager
        yubikey-personalization-gui
        yubikey-touch-detector
        yubioath-desktop
    )
}

package_mmk-software-gui() {
    install="$pkgname.install"
    depends=(
        alacritty
        baobab
        calibre
        file-roller

        remmina

        spotify

        zathura # pdf viewer with vim keybindings
        zathura-pdf-mupdf
        zathura-ps

        zeal
    )
}

package_mmk-video-amd() {
    install="$pkgname.install"
    provides=(mmk-acceleration)
    depends=(
        mesa-demos # glxinfo
        vulkan-tools # vulkaninfo
        libva-mesa-driver # radeonsi_drv
        mesa-vdpau # vdpau radeonsi
        radeon-profile
        radeon-profile-daemon
        amdgpu-fan
        xf86-video-amdgpu
        xf86-video-ati
    )
}

package_mmk-sound() {
    depends=(
        libldac
        pamixer
        playerctl
    )
}

package_mmk-build() {
    depends=(
        cmake freetype2 fontconfig make pkgconf
        binutils
    )
}