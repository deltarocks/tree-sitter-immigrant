{
  description = "Tree-sitter grammar for immigrant";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-25.11";
    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
    shelly.url = "github:CertainLach/shelly";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.shelly.flakeModule
      ];
      systems = inputs.nixpkgs.lib.systems.flakeExposed;

      perSystem =
        {
          self',
          lib,
          pkgs,
          system,
          config,
          ...
        }:
        let
          treefmt = (inputs.treefmt-nix.lib.evalModule pkgs ./treefmt.nix).config.build;
        in
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;
          };

          shelly.shells.default = {
            packages = with pkgs; [
              pkg-config
              deno
              python3
              emscripten
              cargo
              rustc
            ];
          };

          formatter = treefmt.wrapper;
        };
    };
}
