{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Utilities For Wayland
    cliphist
    swaynotificationcenter
    wev
    wl-clipboard
    wofi

    # Hyprland Ecosystem Utilities
    hyprpaper
    hyprpolkitagent
    hyprshot
    hyprsunset

    # Desktop apps
    kitty
    obsidian
    pwvucontrol
    telegram-desktop
    waypaper

    # Cli tools
    bat
    curl
    eza
    fastfetch
    fd
    fzf
    git
    lazygit
    manix
    ripgrep
    starship
    stow
    yazi
    zoxide

    # Just because
    busybox
    uutils-coreutils-noprefix

    # Lsp
    bash-language-server
    clang-tools
    harper
    lua-language-server
    nixd
    rust-analyzer

    # Formatters
    alejandra
    nixfmt-rfc-style
    black
    isort
    prettierd
    stylua

    # Compilers & Interpreters
    clang
    python312
    rustup
  ];

  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
    miracode
  ];
}
