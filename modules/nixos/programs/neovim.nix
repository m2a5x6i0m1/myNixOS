{ inputs, pkgs, ... }:
{
  # I use Neovim, btw :)
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = inputs.neovim-nightly-overlay.packages.${pkgs.system}.default;
  };
}
