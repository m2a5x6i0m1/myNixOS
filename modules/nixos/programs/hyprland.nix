{
  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # UWSM
  # programs.uwsm.enable = true;
  # programs.hyprland.withUWSM = true;

  # Здесь будут куски кода на "расследование"
  # exec systemd-cat -t uwsm_start uwsm start default # as a way to start hyprland
  # exec-once = uwsm finalize # in hyprland.conf
}
