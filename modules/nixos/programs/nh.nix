{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 5";
    flake = "/home/max/myNixOS"; # sets NH_OS_FLAKE variable for you
  };
}
