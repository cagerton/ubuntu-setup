include:
  - default
  - emacs
  - chromium
  - dropbox
  - medibuntu
  - nodejs
  - lightdm

default-dev:
  pkg:
    - latest
    - names:
      - build-essential
      - devscripts
      - fakeroot
      - debhelper
      - dconf-tools
      - gconf-editor
      - qemu-kvm-spice
      - python-spice-client-gtk
      - libvirt-bin
      - virt-manager
      - virt-viewer
      - ecryptfs-utils
      - redshift
      - unclutter
      - xfonts-terminus
      - fonts-droid
      - ttf-mscorefonts-installer
      - flashplugin-installer
      - telepathy-sofiasip
      # TODO: - skype
      - beets
      - nmap
      - figlet
      - xmonad
      - xmobar
      - libghc-xmonad-dev
      - libghc-xmonad-contrib-dev
      # TODO: clojure & leiningen
      - openjdk-7-jdk
    - require:
      - pkg: default
      - pkg: chromium
      - pkg: dropbox
      - pkg: medibuntu
      - pkg: nodejs

/etc/security/limits.conf:
  file:
    - managed
    - source: salt://default/limits.conf
    - user: root
    - group: root
    - mode: 644

/usr/local/bin/logout.sh:
  file:
    - managed
    - source: salt://default/logout.sh
    - user: root
    - group: root
    - mode: 755
