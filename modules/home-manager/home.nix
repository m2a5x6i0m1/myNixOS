{
  programs.home-manager.enable = true;
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "25.05";
  };
  imports = [
    ./parts/firefox.nix
    ./parts/git.nix
    ./parts/lazygit.nix
  ];
}
