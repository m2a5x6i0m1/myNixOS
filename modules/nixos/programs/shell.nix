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
    gh
    git
    lazygit
    manix
    ripgrep
    starship
    stow
    yazi
    zoxide
  ];
}
