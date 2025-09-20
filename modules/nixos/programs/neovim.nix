{ pkgs, ... }:
{
  # Neovim, btw :)
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  # Packages
  environment.systemPackages = with pkgs; [
    # LSPs
    bash-language-server
    clang-tools
    harper
    lua-language-server
    nixd

    # Formatters
    nixfmt-rfc-style
    prettierd
    stylua

    # Compilers & Interpreters
    clang
  ];
}
