{ pkgs, ... }:
{
  # Z-shell
  programs.zsh.enable = true;

  # Packages
  environment.systemPackages = with pkgs; [
    busybox
    curl
    eza
    fd
    fzf
    git
    lazygit
    ripgrep
    starship
    stow
    yazi
  ];
}
