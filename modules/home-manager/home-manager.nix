{inputs, ...}: {
  imports = [inputs.home-manager.nixosModules.home-manager];

  home-manager.useGlobalPkgs = true;
  home-manager.useUserPackages = true;
  home-manager.backupFileExtension = "bak";
  home-manager.users."max" = ./home.nix;
}
