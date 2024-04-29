{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.aarch64-darwin.default = ( import ./. { pkgs = nixpkgs.legacyPackages.aarch64-darwin; } );
    packages.x86_64-linux.default   = ( import ./. { pkgs = nixpkgs.legacyPackages.x86_64-linux; } );
  };
}
