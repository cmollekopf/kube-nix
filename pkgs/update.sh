#!/usr/bin/env bash
#A temporary workaround? https://github.com/NixOS/nixpkgs/issues/38150
export NIX_REMOTE=daemon
nix-prefetch-git git://anongit.kde.org/sink refs/heads/develop > sink/nixpkgs.json
nix-prefetch-git git://anongit.kde.org/kube refs/heads/develop > kube/nixpkgs.json
