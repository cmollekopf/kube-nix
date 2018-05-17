{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase, qtquickcontrols2, qtwebengine, kcoreaddons, kmime, kasync, kcontacts, kcalcore, sink, qgpgme, gpgme, kcodecs, debug ? true
}:

stdenv.mkDerivation rec {
    name = "kube-develop";

    separateDebugInfo = true;

    src = fetchgit {
      inherit (builtins.fromJSON (builtins.readFile ./nixpkgs.json)) url rev sha256;
    };

    cmakeBuildType = "Debug";
    cmakeFlags="-DCMAKE_EXPORT_COMPILE_COMMANDS=True";

    buildInputs = [ cmake extra-cmake-modules qtbase qtquickcontrols2 qtwebengine kcoreaddons kasync kmime kcontacts sink qgpgme gpgme kcodecs kcalcore];
    meta = {
        description = "Kube";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
