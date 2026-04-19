#!/bin/bash

set -ouex pipefail

dnf -y install libva-nvidia-driver 
dnf -y remove \
    scx-scheds \
    scx-tools


dnf -y copr enable bieszczaders/kernel-cachyos-addons
dnf -y copr enable myriad-sun/zen-browser

dnf -y install \
    scx-scheds-git \
    scx-tools-git \
    kerver \
    zen-browser
    

dnf -y copr disable bieszczaders/kernel-cachyos-addons
dnf -y copr disable myriad-sun/zen-browser
