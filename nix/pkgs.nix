{inputs, ...}: {
  config = {
    perSystem = {system, ...}: {
      _module.args.pkgs = import inputs.nixpkgs {
        inherit system;
        overlays = [];
        config = {
          allowUnfree = true;
        };
      };
    };
  };
}
