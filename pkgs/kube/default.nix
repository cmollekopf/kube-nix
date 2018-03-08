{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qt5, kcoreaddons, kmime, kasync, kcontacts, sink, qgpgme, kcodecs
}:

stdenv.mkDerivation rec {
    name = "kube-0.6";

    src = fetchgit {
      url = "git://anongit.kde.org/kube";
      rev = "refs/heads/develop";
      branchName = "develop";
    };

    buildInputs = [ cmake extra-cmake-modules qt5.qtbase kcoreaddons kasync kmime kcontacts sink qt5.qtquickcontrols2 qt5.qtwebengine qgpgme kcodecs];

    meta = {
        description = "Kube";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
