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
    # gthumb
    # syncthing

    # Tui
    fastfetch
    htop
    lazygit
    nushell
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

    # Lsp
    bash-language-server
    clang-tools
    harper
    lua-language-server
    nixd
    rust-analyzer

    # Debuggers
    lldb

    # Formatters
    alejandra
    prettierd
    stylua
    isort
    black

    # Compilers & Interpreters
    clang
    python312
    rustup
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
    miracode
  ];
  fonts.fontDir.enable = true;
}
