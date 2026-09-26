#!/bin/bash

set -ouex pipefail

dnf -y remove \
    bazaar \
    intel-lpmd \
    lutris \
    scx-scheds \
    scx-tools

dnf -y copr enable bieszczaders/kernel-cachyos-addons

dnf install -y \
    --enablerepo="copr:copr.fedorainfracloud.org:bieszczaders:kernel-cachyos-addons" \
    --allowerasing \
    libcap-ng libcap-ng-devel procps-ng procps-ng-devel libbpf scx-scheds-git scx-tools-git scx-manager cachyos-settings ananicy-cpp
    
dnf -y copr disable bieszczaders/kernel-cachyos-addons
