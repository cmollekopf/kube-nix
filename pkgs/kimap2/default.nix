{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase, kcoreaddons, cyrus_sasl, kmime, kcodecs
}:

stdenv.mkDerivation rec {
    name = "kimap2-1.2.0";

    separateDebugInfo = true;
    src = fetchgit {
      url = "git://anongit.kde.org/kimap2";
      rev = "60fe78bf8e55184df31f4eec7dfd50a523fdf02d";
      sha256 = "1jsb9b9ajqypyjwv35pd5hv4l5kb3jr4l7isj40aj94jb7hz2igd";
    };

    buildInputs = [ cmake extra-cmake-modules qtbase kcoreaddons kcodecs];
    propagatedBuildInputs = [ cyrus_sasl kcoreaddons kmime ];

    meta = {
        description = "KIMAP2";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
