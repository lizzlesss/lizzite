#!/bin/bash

set -ouex pipefail

dnf -y remove \
    scx-scheds \
    scx-tools

dnf -y copr enable bieszczaders/kernel-cachyos-addons

dnf install -y \
    --enablerepo="copr:copr.fedorainfracloud.org:bieszczaders:kernel-cachyos-addons" \
    --allowerasing \
    libcap-ng libcap-ng-devel cachyos-ksm-settings procps-ng procps-ng-devel uksmd libbpf scx-scheds-git scx-tools-git scx-manager
    
dnf -y copr disable bieszczaders/kernel-cachyos-addons
