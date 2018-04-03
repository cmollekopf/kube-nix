{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase, qtxmlpatterns, kcoreaddons
}:

stdenv.mkDerivation rec {
    name = "kdav2";

    separateDebugInfo = true;
    src = fetchgit {
      url = "git://anongit.kde.org/kdav2";
      rev = "2b258e104b6434d67b4245de2ac51e86756d0fdc";
      sha256 = "0vvxans0497jwn1r179k7rf7sv24j1bvrb1ns30f2rwq4l9ba753";
    };

    buildInputs = [ cmake extra-cmake-modules qtbase qtxmlpatterns kcoreaddons ];

    meta = {
        description = "KDAV2";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
