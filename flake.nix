{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs?rev=ce6aa13369b667ac2542593170993504932eb836";
    go.url = "github:a-h/nix-golang";
  };

  outputs = { self, nixpkgs, flake-utils, go }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [
            go.packages.${system}.go_1_19_1
            pkgs.hello
          ];
        };
        # Set the default package for nix build.
        # https://nixos.wiki/wiki/Flakes
        # defaultPackage = go.defaultPackage.${system};
      });
}
