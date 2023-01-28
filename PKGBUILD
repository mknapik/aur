pkgbase=mmk
pkgname=(
    mmk-android
    mmk-backup
    mmk-keyboard
    mmk-ntp
    mmk-bt
    mmk-full
    mmk-devel
    mmk-browser
    mmk-docker
    mmk-fonts
    mmk-fs
    mmk-git
    mmk-git-gui
    mmk-software-gui
    mmk-hw-utils
    mmk-hw-control
    mmk-hw-gui
    mmk-neocli
    mmk-network
    mmk-network-utils
    mmk-network-gui
    mmk-rng
    mmk-arch
    mmk-system
    mmk-security
    mmk-shell
    mmk-sound
    mmk-sound-gui
    mmk-sway
    mmk-top-utils
    mmk-utils
    mmk-video-amd
    mmk-yubikey
    mmk-build
    mmk-mailspring
    mmk-virtualization
    mmk-printer
    mmk-optional-cli

    mmk-voskhod
    mmk-mir
    mmk-laika

    mmk-cpu-amd
    mmk-dev
    mmk-dev-cli
    mmk-dev-gui
    mmk-dev-php
)
pkgver=0.0.3
pkgrel=1
arch=(any)
license=(MIT)
groups=(mmk)


package_mmk-full() {
    pkgdesc='Best practices for setting up an Arch after installation. '
    depends=(
        mmk-system
        mmk-shell
        mmk-rng
        mmk-ntp
        mmk-network
        mmk-bt
        mmk-keyboard

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
        mmk-security
        mmk-sound
        mmk-sway
        mmk-backup

        mmk-printer
        mmk-hw-gui
        mmk-dev-gui
        mmk-git-gui
        mmk-software-gui
        mmk-network-gui
        mmk-fonts
        mmk-sound-gui
    )
}

package_mmk-laika() {
    depends=(
        mmk-video-amd
        mmk-cpu-amd

        mmk-full
    )
}

package_mmk-mir() {
    depends=(
        mmk-video-amd
        mmk-cpu-amd

        mmk-full

        msi-rgb # mir
    )
}

package_mmk-voskhod() {
    depends=(
        mmk-video-amd
        mmk-cpu-amd

        mmk-full

        nct6775-master-dkms-git # voskhod
    )
}

package_mmk-android() {
    depends=(
        android-udev
        android-sdk
        android-sdk-platform-tools
        android-sdk-build-tools
        android-platform

        revanced-builder
        revanced-cli
        revanced-integrations
        revanced-patches
    )
}

package_mmk-optional-cli() {
    depends=(
        visidata
        # tabview-git # CMD tools for CSV viewing.
        speedtest-cli
        cmatrix
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
        dialog
        etc-update
        dpkg
        pacman-contrib

        aurutils
        paru
        pkgtop
        # mirrorlist
        reflector
        pkgfile
        pkgtop
        pacman
        pkgtools
        # pacdep
        ccache
        expac
    )
}

package_mmk-system() {
    depends=(
        
        logrotate
        unp # unpack all
        bzip2
        p7zip
        unrar
        unace
        unzip
        time
        wget
        systemd
        scdoc
        s-nail
        less
        sysfsutils
        procps-ng # ps pkill pgrep free, etc
        patchutils
        openssh
        vim
        neovim
        nano
        micro
        openssl

        bind
        bison

        acpid
        usbutils
        samba
        sed
        shadow
        sudo
        
        efibootmgr
        os-prober

        terminus-font
        rygel

        linux
        linux-headers
        linux-firmware
        licenses
        lostfiles
        lsb-release

        archlinux-keyring

        man-db
        man-pages

        mmk-build
        mmk-devel
    )
}

package_mmk-devel() {
    depends=(
        archlinux-keyring
        autoconf
        automake
        binutils
        bison
        fakeroot
        file
        findutils
        flex
        gawk
        gcc
        gettext
        grep
        groff
        gzip
        libtool
        m4
        make
        pacman
        patch
        pkgconf
        sed
        sudo
        texinfo
        which
    )
}

package_mmk-fs() {
    install="$pkgname.install"
    depends=(
        jfsutils
        xfsprogs
        ntfs-3g
        nfs-utils
        exfat-utils
        reiserfsprogs
        # gcsfc
        mdadm
        lvm2
        util-linux
        nvme-cli
    )
}

package_mmk-utils() {
    depends=(
        moreutils # chronic, sponge & co
        mmv # multiple files move
        dog # better dig

        mimeo
        trash-cli

        # file navigator
        lf
        xplr
        mc

        rclone
        entr
        hyperfine
        zoxide # jump
        mediainfo
        skim
        fzf
        etckeeper # vcs for /etc
        neofetch
        lsdesktopf
        xorg-xwininfo

        ventoy-bin # live linux
        subliminal # subtitles
    )
}

package_mmk-mailspring() {
    depends=(
        mailspring

        ## build deps
        # gcc10
        # gconf
        # execstack
        # dpkg
        # rpm
        # rpm-tools
    )
}

package_mmk-ntp() {
    install="$pkgname.install"
    depends=(
    )
}

package_mmk-virtualization() {
    install="$pkgname.install"
    depends=(
        libvirt
        qemu
        virt-manager
        virt-viewer
        qemu-system-aarch64
        edk2-ovmf
        qemu-system-arm

        # network
        iptables-nft
        dnsmasq # NAT/DHCP networking
        bridge-utils
        openbsd-netcat
        net-tools

        dmidecode

        vagrant
        # virtualbox
        # virtualbox-host-modules-arch
    )
}

package_mmk-printer() {
    install="$pkgname.install"
    depends=(
        system-config-printer
        xsane
        hplip
        hplip-plugin
        cups
        cups-pdf
    )
}

package_mmk-hw-gui() {
    depends=(
        gsmartcontrol
        gwakeonlan
        guvcview
        gnome-firmware
    )
}

package_mmk-hw-control() {
    depends=(
        gammastep
        # brillo
        light
        ddcutil
        # ddcci-driver-linux-dkms
    )
}

package_mmk-cpu-amd() {
    depends=(
        amd-ucode
    )
}

package_mmk-hw-utils() {
    pkgdesc='Terminal and GUI tools for hardware identification.'
    depends=(
        hdparm
        cpupower
        hwinfo
        # geekbench
        # phoronix-test-suite
        lshw
        hardinfo
        cpu-x
        turbostat # frequency, power consumption, idle status and other statistics of the modern Intel and AMD CPUs
    )
}

package_mmk-backup() {
    pkgdesc='Backup strategy'
    depends=(
        borgmatic
        borg
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
        chntpw # sync bluetooth codes windows&linux
    )
}

package_mmk-network-gui() {
    depends=(
        gwakeonlan
    )
}

package_mmk-network() {
    depends=(
        network-manager-applet
        nm-connection-editor
        networkmanager-strongswan
        networkmanager-l2tp
        networkmanager-openconnect
        networkmanager-vpnc

        # bonjour/zeroconf network printer software
        avahi 
        nss-mdns

        wireguard-tools
    )
}

package_mmk-network-utils() {
    pkgdesc='Network traffic top and utils.'
    depends=(
        nmap
        traceroute
        mtr
        ipcalc
        iperf3
        iputils # ping
        prettyping
        inetutils # telnet
        iftop
        # slurm
        netwatch
        jnettop
        openbsd-netcat
        bandwhich
        nethogs
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

package_mmk-fonts() {
    depends=(
        adobe-source-han-serif-jp-fonts
        adobe-source-code-pro-fonts
        
        nerd-fonts-complete

        ttf-fira-code # monospace ligatures font
        noto-fonts
        noto-fonts-emoji
        unicode-emoji
        ttf-jetbrains-mono
        ttf-dejavu
    )
}

package_mmk-sway() {
    depends=(
        # screenshot
        swappy
        slurp
        grim

        seahorse

        # python-pywal
        xdg-user-dirs
        xdg-user-dirs-gtk

        sway
        swaybg
        swayidle
        waybar
        swaylock-effects
        swayr
        swaync
        wlogout # logout menu
        
        xorg-xwayland

        rofi-calc
        rofi-emoji
        rofi-dmenu
        rofi-lbonn-wayland-git # rofi

        lastpass-cli
        
        bluetooth-headset-battery-level-git

        # wob
        avizo

        zenity
        alacritty
        gammastep

        wl-clipboard
        wl-clipboard-x11 # xclip xsel for wayland
        clipman # Clipboard history manager

        otf-font-awesome # glyph font for Sway icons
        polkit-gnome
        wf-recorder
        sxiv
        gammastep
        udiskie

        dex
        kanshi

        mako
        notify-desktop-git

        arandr
        wdisplays

        kdeconnect
        qt5-wayland
        qt5-base

        adwaita-dark
        arc-gtk-theme
        arc-icon-theme
        lxappearance

        nautilus
        nautilus-sendto
        
        gparted
        gnome-keyring
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

        pop-sound-theme-bin

        gnome-themes-standard
        gnome-themes-extra

        xdg-desktop-portal
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

package_mmk-security() {
    depends=(
        lastpass-cli
        1password
        1password-cli

        pwgen
        authy
        pam-krb5
        pam-u2f
        pam_pkcs11
        pass-otp
        pcsc-tools
        mmk-yubikey
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
    depends=(
        authy

        alacritty
        baobab
        calibre
        libreoffice-fresh
        libreoffice-fresh-pl
        postgresql-libs # optional dep for libreoffice
        file-roller
        # google-earth-pro

        mmk-mailspring
        minder

        # obs-studio
        # wlrobs # obs plugin

        remmina

        # spotify
        slack-desktop
        simple-scan
        signal-desktop
        # stacer

        transmission-gtk
        transmission-cli

        code
        code-marketplace
        code-features

        zathura # pdf viewer with vim keybindings
        zathura-pdf-mupdf
        libmupdf
        zathura-ps
        gthumb

        zeal
    )
}

package_mmk-video-amd() {
    install="$pkgname.install"
    provides=(mmk-acceleration)
    depends=(
        mesa-utils # glxinfo
        mesa-demos
        vulkan-tools # vulkaninfo
        libva-mesa-driver # radeonsi_drv
        mesa-vdpau # vdpau radeonsi
        radeon-profile-git
        # corectrl
        radeon-profile-daemon-git
        amdgpu-fan
        xf86-video-amdgpu
        xf86-video-ati
        vdpauinfo
        libva-utils
        radeontop
        nvtop
        vulkan-radeon # RADV Mesa
        amdvlk # AMDVLK Open
    )
}

package_mmk-build() {
    depends=(
        cmake
        freetype2
        fontconfig
        make
        pkgconf
        binutils
        meson
        ninja
    )
}


# veted

package_mmk-browser() {
    depends=(
        chromium
        firefox
        hunspell-en_US
        hunspell-pl
    )
}

package_mmk-docker() {
    depends=(
        docker
        docker-compose
        lazydocker
        ctop
        dive
        docker-credential-secretservice # Keep docker credentials in Keyring
        container-diff
    )
}

package_mmk-dev() {
    depends=(
        go-task-bin
        postgresql-libs
        picocom
        wol
        ansible
        tokei
        tmate
        thefuck
        terraform
        packer
        redis
        rustup
        ipcalc
        android-udev
        hyperfine
        hadolint
        lefthook
        mycli
    )
}

package_mmk-dev-gui() {
    depends=(
        keybase-gui
        meld
        # diffuse
        mongodb-compass
    )
}

package_mmk-dev-php() {
    depends=(
        php
        asdf-vm
        php-gd
        php-intl
        php-sodium
        composer
        re2c
        mariadb-clients
        mycli
        mysql-workbench
    )
}

package_mmk-dev-cli() {
    depends=(
        google-cloud-sdk
        python-crcmod # for gcloud rsync

        aws-cli-v2
        aws-session-manager-plugin
        aws-vault
        
        multitail
        glow # markdown viewer
        # patat # pandoc viewer
        jq
        yq
        fx
        jwt-cli
        asdf-vm
        direnv
        tealdeer # tldr
        httpie # curl alternative
    )
}

package_mmk-git() {
    pkgdesc='Git Terminal UI tools.'
    depends=(
        lazygit
        tig
        gitui
        git-delta
        git-lfs
        gitlint
        github-cli
        heroku-cli
    )
}
package_mmk-git-gui() {
    depends=(
        meld # difftool GUI diff tool
    )
}

package_mmk-keyboard() {
    depends=(
        xkbmap-compose-hyper-git
        interception-tools
        interception-compose-git
        chrysalis-bin # Kaleidoscope, Chrysalis fo Keyboard.io
        wev
        wshowkeys
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
        the_silver_searcher
        sysstat
        choose # cut
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


package_mmk-sound() {
    depends=(
        celt
        libldac
        pamixer
        playerctl
        sox
        mpv
        # pipewire-jack
        pipewire-pulse
        pulsemixer
    )
}

package_mmk-sound-gui() {
    depends=(
        avizo
        easyeffects
        pavucontrol
    )
}
