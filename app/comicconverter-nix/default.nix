{ stdenv }:
stdenv.mkDerivation rec {
  name = "program-${version}";
  version = "1.0";

  src = ./.;

  installPhase = ''
    mkdir -p $out/bin
    cp comicconvert $out/bin
  '';
}
