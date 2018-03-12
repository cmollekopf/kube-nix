{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase
}:

stdenv.mkDerivation rec {
    name = "kasync-1.2.0";

    separateDebugInfo = true;

    src = fetchgit {
      url = "git://anongit.kde.org/kasync";
    };

    buildInputs = [ cmake extra-cmake-modules qtbase ];

    meta = {
        description = "KAsync";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
