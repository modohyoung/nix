let
  spec = builtins.fromJSON (builtins.readFile ./nixpkgs-src.json);
  rev = spec.rev;
in
  builtins.fetchTarball {
    url = "https://github.com/${spec.owner}/${spec.repo}/archive/${spec.rev}.tar.gz";
    sha256=spec.sha256;
  }
