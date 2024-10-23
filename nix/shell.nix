{pkgs}: let
  inherit (pkgs) stdenv;
in
  stdenv.mkDerivation {
    name = "xxx-dev";

    shellHook = ''
      export NIX_SHELL_DIR=$PWD
    '';
  }
