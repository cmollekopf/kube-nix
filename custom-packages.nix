{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {
  pkgconfig = import ./pkgs/pkgconfig {
    inherit (pkgs) stdenv fetchurl automake;
  };

  kasync = import ./pkgs/kasync {
    inherit (pkgs) stdenv fetchgit cmake extra-cmake-modules qt5;
  };

  kimap2 = import ./pkgs/kimap2 {
    inherit (pkgs) stdenv fetchgit cmake extra-cmake-modules qt5 cyrus_sasl;
    inherit (pkgs.kdeFrameworks) kcoreaddons kcodecs;
    inherit (pkgs.kdeApplications) kmime;
  };

  kdav2 = import ./pkgs/kdav2 {
    inherit (pkgs) stdenv fetchgit cmake extra-cmake-modules qt5;
    inherit (pkgs.kdeFrameworks) kcoreaddons;
  };

  sink = import ./pkgs/sink {
    inherit kasync kimap2 kdav2;
    inherit (pkgs) stdenv fetchgit cmake extra-cmake-modules qt5 lmdb flatbuffers curl readline xapian;
    inherit (pkgs.kdeFrameworks) kcoreaddons kcodecs;
    inherit (pkgs.kdeApplications) kmime kcontacts;
  };

  kube = import ./pkgs/kube {
    inherit kasync sink;
    inherit (pkgs) stdenv fetchgit cmake extra-cmake-modules qt5;
    inherit (pkgs.libsForQt5) qgpgme;
    inherit (pkgs.kdeFrameworks) kcoreaddons kcodecs;
    inherit (pkgs.kdeApplications) kmime kcontacts;
  };
}
