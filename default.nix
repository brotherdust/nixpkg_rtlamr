{ buildGoPackage, fetchFromGitHub }:
buildGoPackage rec {
  name = "rtlamr-${version}";
  version = "0.9.1";
  goPackagePath = "github.com/bemasher/rtlamr";
  src = fetchFromGitHub {
    owner = "bemasher";
    repo = "rtlamr";
    rev = "4752d6d97cebdeadeeecda2e91fd5e3217140098";
    sha256 = "13i1kq24043nmr3bqrpbg1k49a1vjqrzcxqaaxranyimkdnpxhwv";
  };
  goDeps = ./deps.nix;
}
