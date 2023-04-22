{
  outputs = {nixpkgs, self}: {
    packages = nixpkgs.lib.mapAttrs (system: pkgs: {
      default = import ./default.nix {nixpkgs = pkgs;};
    }) nixpkgs.legacyPackages;
  };
}
