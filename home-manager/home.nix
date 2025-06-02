{
  config,
  pkgs,
  inputs,
  ...
}: {
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [
    ./modules/firefox.nix
    ./modules/git.nix
    ./modules/lazygit.nix
  ];
}
