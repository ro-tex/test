{
    pkgs ? import <nixpkgs> {}
}:
pkgs.buildGoModule {
    name = "test";
    src = ./.;
    vendorHash = null;
}
