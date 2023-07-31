default:
    @just --list


start-x86-vm:
    #!/usr/bin/env bash
    set -e
    qemu-system-x86_64 \
        -smp 4 \
        -m 8192 \
        -hda ./x86_64/nixos.qcow2 \
        -net user,hostfwd=tcp::2222-:22 -net nic

