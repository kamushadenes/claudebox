{ pkgs, inputs, ... }:
inputs.treefmt-nix.lib.mkWrapper pkgs {
  projectRootFile = "flake.nix";
  programs = {
    nixfmt.enable = true;
    biome.enable = true;
    mdformat.enable = true;
    shfmt.enable = true;
  };
}
