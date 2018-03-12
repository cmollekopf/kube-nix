To build:
    nix-build custom-packages.nix -A kube

To install:
    nix-env -f custom-packages.nix -iA kube

To install it as overlay:
    Clone to ~/.config/nixpkgs/overlays/kube. Install with nix-env -iA nixos.kube.
