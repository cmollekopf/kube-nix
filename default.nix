self: super:
let
    callPackage = super.libsForQt5.callPackage;
    stdenv = super.stdenvAdapters.keepDebugInfo super.stdenv;
    kmime = super.kdeApplications.kmime;
in {
  kcalcore = callPackage ./pkgs/kcalcore {};
  kasync = callPackage ./pkgs/kasync {};
  kimap2 = callPackage ./pkgs/kimap2 {kmime = kmime;};
  kdav2 = callPackage ./pkgs/kdav2 {};
  sink = callPackage ./pkgs/sink {kmime = kmime;};
  kube = callPackage ./pkgs/kube {kmime = kmime;};
}
