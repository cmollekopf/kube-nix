{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase
}:

stdenv.mkDerivation rec {
    name = "kasync";

    separateDebugInfo = true;

    src = fetchgit {
      url = "git://anongit.kde.org/kasync";
      rev = "962a9b82704cd3d3b7cc33d4735e50ecf13cecb9";
      sha256 = "1fxwqwrjzg130sjvibkfinwc9mfk8ax3warwbyvnxqc5mhbc53p7";
    };

    buildInputs = [ cmake extra-cmake-modules qtbase ];

    meta = {
        description = "KAsync";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
