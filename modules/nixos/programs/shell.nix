{ pkgs, ... }:
{
  # Z-shell
  programs.zsh.enable = true;

  # Packages
  environment.systemPackages = with pkgs; [
    # cargo-seek
    # manix
    # navi
    busybox
    curl
    eza
    fd
    fzf
    git
    lazygit
    pastel
    ripgrep
    smassh
    starship
    stow
    tealdeer
    yazi
    zoxide
  ];
}
