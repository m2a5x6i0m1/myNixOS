{
  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # UWSM
  programs.uwsm.enable = true;
  programs.hyprland.withUWSM = true;

  # Короче, прикол с двумя вайбарами был обусловлен тем, что когда hyprland is launched with uwsm,
  # programs.waybar.enable will automatically autostart waybar, and it seems to me that not only it would do so, but other modules too.

  # Ли кстати вообще не работает с hyprland.withUWSM
}
