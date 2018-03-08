{ stdenv, fetchgit,
  cmake, extra-cmake-modules, qt5, kcoreaddons, kimap2, kmime, kcodecs, kasync, kdav2, kcontacts, lmdb, flatbuffers, curl, readline, xapian
}:

stdenv.mkDerivation rec {
    name = "sink-0.6";

    src = fetchgit {
      url = "git://anongit.kde.org/sink";
      rev = "refs/heads/develop";
      branchName = "develop";
    };

    buildInputs = [ cmake extra-cmake-modules qt5.qtbase kcoreaddons kcodecs kimap2 kasync kdav2 kmime kcontacts lmdb flatbuffers curl readline xapian];

    meta = {
        description = "Sink";
        homepage = http://www.kde.org;
        license = "GPLv2+";
        maintainers = [ stdenv.lib.maintainers.sander ];
    };
}
