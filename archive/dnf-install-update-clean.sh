#!/usr/bin/env sh
sudo dnf --refresh autoremove
dnf clean all
sudo dnf upgrade --assumeno
sudo dfn group install --assumeno 3d-printing
sudo dfn group install --assumeno audio
sudo dfn group install --assumeno authoring-and-publishing
sudo dfn group install --assumeno books
sudo dfn group install --assumeno cloud-infrastructure
sudo dfn group install --assumeno cloud-management
sudo dfn group install --assumeno compiz
sudo dfn group install --assumeno container-management
sudo dfn group install --assumeno d-development
sudo dfn group install --assumeno design-suite
sudo dfn group install --assumeno domain-client
sudo dfn group install --assumeno eclipse
sudo dfn group install --assumeno education
sudo dfn group install --assumeno electronic-lab
sudo dfn group install --assumeno engineering-and-scientific
sudo dfn group install --assumeno freeipa-server
sudo dfn group install --assumeno mate-applications
sudo dfn group install --assumeno medical
sudo dfn group install --assumeno milkymist
sudo dfn group install --assumeno network-server
sudo dfn group install --assumeno neuron-modelling-simulators
sudo dfn group install --assumeno python-classroom
sudo dfn group install --assumeno python-science
sudo dfn group install --assumeno robotics-suite
sudo dfn group install --assumeno rpm-development-tools
sudo dfn group install --assumeno security-lab
sudo dfn group install --assumeno deepin-desktop
sudo dfn group install --assumeno gnome-desktop
sudo dfn group install --assumeno games
sudo dfn group install --assumeno server-product-environment
sudo dfn group install --assumeno workstation-product-environment
sudo dfn group install --assumeno cloud-server-environment
sudo dfn group install --assumeno xfce-desktop-environment
sudo dfn group install --assumeno lxde-desktop-environment
sudo dfn group install --assumeno lxqt-desktop-environment
sudo dfn group install --assumeno cinnamon-desktop-environment
sudo dfn group install --assumeno mate-desktop-environment
sudo dfn group install --assumeno sugar-desktop-environment
sudo dfn group install --assumeno deepin-desktop-environment
sudo dfn group install --assumeno developer-workstation-environment
sudo dfn group install --assumeno web-server-environment
sudo dfn group install --assumeno infrastructure-server-environment
sudo dfn group install --assumeno basic-desktop-environment
sudo dfn group install -y custom-environment
sudo dfn group install -y minimal-environment
sudo dfn group install -y kde-desktop-environment
sudo dfn group install -y admin-tools
sudo dfn group install -y c-development
sudo dfn group install -y development-tools
sudo dfn group install -y editors
sudo dfn group install -y headless-management
sudo dfn group install -y libreoffice
sudo dfn group install -y office
sudo dfn group install -y text-internet
sudo dfn group install -y window-managers
sudo dfn group install -y graphical-internet
sudo dfn group install -y kde-desktop
sudo dfn group install -y fonts
sudo dfn group install -y hardware-support
sudo dfn group install -y sound-and-video
sudo dfn group install -y system-tools
sudo dnf upgrade
