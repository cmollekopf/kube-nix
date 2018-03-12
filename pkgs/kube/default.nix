{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase, qtquickcontrols2, qtwebengine, kcoreaddons, kmime, kasync, kcontacts, sink, qgpgme, kcodecs, debug ? true
}:

stdenv.mkDerivation rec {
    name = "kube-develop";

    separateDebugInfo = true;

    src = fetchgit {
      url = "git://anongit.kde.org/kube";
      rev = "refs/heads/develop";
      branchName = "develop";
    };

    cmakeBuildType = "Debug";

    buildInputs = [ cmake extra-cmake-modules qtbase qtquickcontrols2 qtwebengine kcoreaddons kasync kmime kcontacts sink qgpgme kcodecs];
    meta = {
        description = "Kube";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
