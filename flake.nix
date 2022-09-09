{
  description = "A very basic flake";

  inputs = {
    nixpkgs = {
      type = "github";
      owner = "NixOS";
      repo = "nixpkgs";
      ref = "nixos-unstable";
      flake = false;
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: flake-utils.lib.eachDefaultSystem (system: 
    let 
      pkgs = import nixpkgs { inherit system; };
      handbook = pkgs.runCommand "handbook" { nativeBuildInputs = [pkgs.mdbook]; } ''
        mdbook build --dest-dir "$out" ${self}
      '';
    in {
      packages = {
        inherit handbook;
      };
      devShell = pkgs.mkShell {
        buildInputs = [ pkgs.mdbook ];
      };
    });
}
