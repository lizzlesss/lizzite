#!/bin/bash

set -ouex pipefail

dnf -y remove \
    bazaar \
    fw-ectool \
    fw-fanctrl \
    framework-system \
    intel-lpmd \
    lutris
