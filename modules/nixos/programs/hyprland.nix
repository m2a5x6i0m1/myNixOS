{ pkgs, ... }:
{
  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # UWSM
  programs.uwsm.enable = true;
  programs.hyprland.withUWSM = true;

  # Status bar
  programs.waybar.enable = true;

  # Packages
  environment.systemPackages = with pkgs; [
    # Utilities For Wayland
    brightnessctl
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
  ];
}
