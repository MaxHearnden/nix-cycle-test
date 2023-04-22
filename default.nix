{ nixpkgs ? import <nixpkgs> {} }:

nixpkgs.stdenv.mkDerivation {
  name = "test";
  outputs = ["out" "test"];
  src = ./.;
  buildPhase = ''
    echo $out > $test
    echo $test > $out
  '';
}
