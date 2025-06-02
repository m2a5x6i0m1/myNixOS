{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    # Utilities For Wayland
    cliphist
    swaynotificationcenter
    wev
    wl-clip-persist
    wl-clipboard
    wofi

    # Hyprland Ecosystem Utilities
    hyprpaper
    hyprpolkitagent
    hyprshot
    hyprsunset

    # Desktop apps
    ghostty
    telegram-desktop

    # Cli tools
    brightnessctl
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

    # Just because
    busybox

    # Lsp
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

  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
  ];
}
