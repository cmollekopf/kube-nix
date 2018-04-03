{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qtbase, qtxmlpatterns, kcoreaddons, bison, libical
}:

stdenv.mkDerivation rec {
    name = "kcalcore";

    separateDebugInfo = true;
    src = fetchgit {
      url = "git://anongit.kde.org/kcalcore";
      rev = "7bb747804c6237cf0aedb20bb35227863c63da46";
      sha256 = "1l116rcklb3ka4ya60r6q3gzz79840r2wm9nqwpqvw62al6m8vlm";
    };
    patches = [ ./droprequirements.diff ];

    buildInputs = [ cmake extra-cmake-modules qtbase qtxmlpatterns kcoreaddons bison libical];

    meta = {
        description = "KCalCore";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
