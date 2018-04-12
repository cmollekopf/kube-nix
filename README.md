To build:
    nix-build custom-packages.nix -A kube

To install:
    nix-env -f custom-packages.nix -iA kube

To install it as overlay (default.nix is relevant):
    Clone to ~/.config/nixpkgs/overlays/kube. Install with nix-env -iA nixos.kube.

To run a shell (shell.nix is relevant):
    nix-shell (from this directory)
    $ unpackPhase
    cd into created $root
    $ cmakeConfigurePhase

