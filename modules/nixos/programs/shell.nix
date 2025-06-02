{ pkgs, ... }:
{
  # Z-shell
  programs.zsh.enable = true;

  # gpg
  programs.gnupg.agent.enable = true;

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
