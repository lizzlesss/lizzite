#!/bin/bash

set -ouex pipefail

dnf -y remove \
    bazaar \
    intel-lpmd \
    lutris \
    scx-scheds \
    scx-tools

dnf -y copr enable sirlucjan/scx-scheds-cargo

dnf install -y \
    --enablerepo="copr:copr.fedorainfracloud.org:sirlucjan:scx-scheds-cargo" \
    --allowerasing \
    scx-scheds-git scx-tools-git scx-manager
    
dnf -y copr disable sirlucjan/scx-scheds-cargo
