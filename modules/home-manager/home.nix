{...}: {
  home = {
    username = "max";
    homeDirectory = "/home/max";
    stateVersion = "25.05";
  };
  programs.home-manager.enable = true;
  imports = [
    ./parts/firefox.nix
    ./parts/git.nix
    ./parts/lazygit.nix
  ];
}
