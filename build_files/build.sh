#!/bin/bash

set -ouex pipefail

dnf -y remove \
    bazaar \
    fw-ectool \
    fw-fanctrl \
    framework-system \
    intel-lpmd \
    lutris \
    scx-scheds \
    scx-tools

dnf -y copr enable sirlucjan/scx-scheds-cargo

dnf install -y \
    --enablerepo="copr:copr.fedorainfracloud.org:sirlucjan:scx-scheds-cargo" \
    --allowerasing \
    scx-scheds-dev-git
    
dnf -y copr disable sirlucjan/scx-scheds-cargo
