#!/usr/bin/env bash

nix-prefetch-git git://anongit.kde.org/sink refs/heads/develop > sink/nixpkgs.json
nix-prefetch-git git://anongit.kde.org/kube refs/heads/develop > kube/nixpkgs.json
