{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Wayland
    cliphist
    swaynotificationcenter
    wev
    wl-clipboard
    wofi

    # Hyprland
    hyprpaper
    hyprpolkitagent
    hyprshot
    hyprsunset

    # Desktop apps
    amberol
    ghostty
    gthumb
    neovide
    obsidian
    pwvucontrol
    telegram-desktop
    waypaper

    # Tui
    fastfetch
    lazygit
    starship
    yazi

    # Just because
    busybox
    uutils-coreutils-noprefix

    # Cli tools
    bat
    brightnessctl
    curl
    eza
    fd
    fzf
    git
    manix
    ripgrep
    stow
    zoxide

    # Lsp
    bash-language-server
    lua-language-server
    harper
    nixd
    rust-analyzer
    clang-tools

    # Formatters
    alejandra
    prettierd
    stylua
    isort
    black

    # Compilers & Interpreters
    python312
    rustup
    clang
  ];

  fonts.fontDir.enable = true;
  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
    miracode
  ];
}
