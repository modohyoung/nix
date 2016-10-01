{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "fastText-env";
  version = "0.99";
  buildInputs =
  [
    clang
  ]
  ++
  (with python27Packages;
  [
    numpy scipy
  ]);

}
