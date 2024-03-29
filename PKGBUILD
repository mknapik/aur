pkgbase=mmk
pkgname=(
    mmk-android
    mmk-backup
    mmk-keyboard
    mmk-ntp
    mmk-bt
    mmk-base
    mmk-base-devel
    mmk-browser
    mmk-communication
    mmk-desktop
    mmk-dev
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
)
pkgver=0.0.1
pkgrel=1
arch=(any)
license=(MIT)
groups=(mmk)


package_mmk-base() {
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
        mmk-communication
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
        mmk-virtualization
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
        msi-rgb
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
        the_silver_searcher
        sysstat
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
        hub
    )
}
package_mmk-git-gui() {
    depends=(
        meld # difftool GUI diff tool
    )
}

package_mmk-dev() {
    depends=(
        meson
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
        gradle
        maven
        hadolint-bin
        lefthook
    )
}

package_mmk-android() {
    depends=(
        ncurses5-compat-libs
        flutter

        android-sdk
        android-sdk-platform-tools
        android-sdk-build-tools
        android-platform
    )
}

package_mmk-dev-gui() {
    depends=(
        intellij-idea-community-edition
        keybase-gui
        meld
        mongodb-compass
        postman-bin
    )
}

package_mmk-dev-cli() {
    depends=(
        aws-cli-v2-bin
        aws-session-manager-plugin
        aws-vault
        
        multitail
        glow-bin # markdown viewer
        patat-bin # pandoc viewer
        jq
        yq
        fx
        jwt-cli-bin
        jiq-bin
        asdf-vm
        direnv
        tealdeer # tldr
        httpie # curl alternative
    )
}

package_mmk-optional-cli() {
    depends=(
        visidata
        tabview-git # CMD tools for CSV viewing.
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
        dialog etc-update
        dpkg
        pacman-contrib

        # mirrorlist
        repose
        reflector
        pkgfile
        pkgtools
        pkgtop
        pacdep
        pacman
        yay
    )
}

package_mmk-system() {
    depends=(
        logrotate
        unp
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

        bind
        bison

        acpid
        usbutils
        samba
        sed
        shadow
        sudo
        
        efibootmgr
        grub
        os-prober

        terminus-font
        rygel

        linux
        linux-headers
        linux-firmware
        licenses
        lostfiles
        lsb-release

        man-db
        man-pages

        mmk-build
        mmk-base-devel
    )
}

package_mmk-base-devel() {
    depends=(
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
    depends=(
        jfsutils
        xfsprogs
        ntfs-3g
        nfs-utils
        exfat-utils
        reiserfsprogs
        gcsf-git
        mdadm
        lvm2
    )
}

package_mmk-utils() {
    depends=(
        mimeo
        trash-cli
        nnn
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
    )
}

package_mmk-mailspring() {
    depends=(
        mailspring
        gcc10

        gconf
        execstack
        dpkg
        rpm
        rpm-tools
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
        libvirt
        qemu
        virt-manager
        virt-viewer

        # network
        iptables-nft dnsmasq # NAT/DHCP networking
        bridge-utils
        openbsd-netcat
        net-tools

        dmidecode

        vagrant
        virtualbox
        virtualbox-host-modules-arch
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
        hdparm
        cpupower
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
        nordvpn-bin
        
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
        slurm
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

package_mmk-docker() {
    depends=(
        docker
        docker-compose
        lazydocker-bin
        ctop
        docker-credential-secretservice # Keep docker credentials in Keyring
        container-diff
    )
}

package_mmk-browser() {
    depends=(
        chromium
        firefox
        hunspell-en_US
        hunspell-pl
    )
}
package_mmk-fonts() {
    depends=(
        adobe-source-han-serif-jp-fonts
        adobe-source-code-pro-fonts
        nerd-fonts-complete
        ttf-fira-code # monospace ligatures font
        otf-fira-code
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
        swayr-git
        wlogout # logout menu
        
        xorg-xwayland

        rofi-calc
        rofi-emoji
        rofi-dmenu
        rofi-lbonn-wayland-git # rofi
        lastpass-cli
        
        bluetooth-headset-battery-level-git

        wob
        avizo

        zenity
        alacritty
        redshift-wlr-gamma-control-git

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
        tlp-rdw
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
        lastpass-cli
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
        google-earth-pro

        mmk-mailspring
        minder

        # obs-studio
        # wlrobs # obs plugin

        remmina

        spotify
        slack-desktop
        simple-scan
        signal-desktop
        stacer

        transmission-gtk
        transmission-cli

        visual-studio-code-bin

        zathura # pdf viewer with vim keybindings
        zathura-pdf-mupdf
        libmupdf
        zathura-ps

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
        radeon-profile-daemon-git
        amdgpu-fan
        xf86-video-amdgpu
        xf86-video-ati
        vulkan-radeon
        vdpauinfo
        libva-utils
    )
}

package_mmk-sound() {
    depends=(
        celt
        libldac
        pamixer
        playerctl
        alsa-utils
        sox
        mpv
        # pipewire-jack
        pipewire
        pulsemixer
        pulseaudio-alsa
    )
}

package_mmk-sound-gui() {
    depends=(
        easyeffects
        pavucontrol
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
    )
}

package_mmk-keyboard() {
    depends=(
        workman-git
        xkbmap-compose-hyper-git
        interception-tools
        interception-compose-git
        chrysalis-bin # Kaleidoscope, Chrysalis fo Keyboard.io
    )
}
