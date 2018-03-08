{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qt5, kcoreaddons
}:

stdenv.mkDerivation rec {
    name = "kdav2-1.2.0";

    src = fetchgit {
      url = "git://anongit.kde.org/kdav2";
    };

    buildInputs = [ cmake extra-cmake-modules qt5.qtbase qt5.qtxmlpatterns kcoreaddons ];

    meta = {
        description = "KDAV2";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
