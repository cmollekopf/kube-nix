{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qt5, kcoreaddons, cyrus_sasl, kmime, kcodecs
}:

stdenv.mkDerivation rec {
    name = "kimap2-1.2.0";

    src = fetchgit {
      url = "git://anongit.kde.org/kimap2";
    };

    buildInputs = [ cmake extra-cmake-modules qt5.qtbase kcoreaddons kcodecs];
    propagatedBuildInputs = [ cyrus_sasl kcoreaddons kmime ];

    meta = {
        description = "KIMAP2";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
