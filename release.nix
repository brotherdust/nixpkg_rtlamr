{ pkgs ? (import ./nix {}).pkgs }:

with pkgs;
rec {
  application = callPackage ./default.nix {};
  docker = dockerTools.buildImage {
    name = application.name;
    contents = application;
    config = {
      Cmd = [ "/bin/rtlamr" ];
    };
  };
}
