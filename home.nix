{...}: {
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [
    ./modules/home-manager/firefox.nix
    ./modules/home-manager/git.nix
    ./modules/home-manager/lazygit.nix
  ];
}
