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
    ghostty
    neovide
    obsidian
    pwvucontrol
    telegram-desktop
    waypaper
    libreoffice
    # gthumb
    # syncthing

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
    ripgrep
    stow
    zoxide
    manix

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

  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
    miracode
  ];
  fonts.fontDir.enable = true;
}
