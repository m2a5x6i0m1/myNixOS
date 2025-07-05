{
  description = "My NixOS flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    home-manager.url = "github:nix-community/home-manager/release-25.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs @ {
    nixpkgs,
    self,
    ...
  }: {
    nixosConfigurations = {
      myNixOS-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs self;};
        modules = [
          ./modules/nixos/configuration.nix
          ./modules/home-manager/home-manager.nix
        ];
      };
    };
  };
}
