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
    # libreoffice
    # spotify
    # syncthing

    # For games, also see protondb for info on compatibility
    # lutris # game launcher
    # heroic # another game launcher but for gog releases
    # bottles # allows to run .exe files

    # Tui
    fastfetch
    htop
    lazygit
    nushell
    starship
    yazi

    # Cli tools
    # ripgrep-all
    # xh
    bat
    brightnessctl
    busybox
    curl
    delta
    dust
    eza
    fd
    fzf
    git
    home-manager
    imagemagick
    ripgrep
    stow
    uutils-coreutils-noprefix
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

    # Compilers
    clang
    rustup
  ];

  fonts.packages = with pkgs; [
    nerd-fonts.code-new-roman
    nerd-fonts.jetbrains-mono
    miracode
  ];
  fonts.fontDir.enable = true;
}
