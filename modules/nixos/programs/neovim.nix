{ pkgs, ... }:
{
  # Neovim, btw
  programs.neovim.enable = true;
  programs.neovim.defaultEditor = true;

  # Packages
  environment.systemPackages = with pkgs; [
    # LSPs
    bash-language-server
    lua-language-server
    rust-analyzer
    clang-tools
    harper
    nixd

    kdePackages.qtdeclarative

    # Formatters
    nixfmt-rfc-style
    prettierd
    stylua

    # Compilers & Interpreters
    clang
    rustup
  ];
}
