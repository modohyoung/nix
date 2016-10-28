{ pkgs ? import <nixpkgs> {} }:

with pkgs;

stdenv.mkDerivation {
  name = "Caffe-env";
  version = "0.99";
  buildInputs =
  [
    cmake atlas hdf5-cpp
    clang protobuf glog google-gflags hdf5 openblas boost
    # Optional Dependency
    opencv lmdb leveldb snappy
  ]
  ++
  (with python27Packages;
  [
    numpy scipy
  ]);
}
