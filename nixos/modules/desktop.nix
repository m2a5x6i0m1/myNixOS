{pkgs, ...}: {
  # Wayland compositor of my choice
  programs.hyprland.enable = true;
  programs.hyprlock.enable = true;
  services.hypridle.enable = true;

  # Ly login manager
  # services.displayManager.ly.enable = true;

  # UWSM
  # programs.uwsm.enable = true;
  # programs.hyprland.withUWSM = true;
  # programs.uwsm.waylandCompositors = {};

  # Autologin with Greetd
  services = {
    greetd = {
      enable = true;
      settings = {
        initial_session = {
          command = "Hyprland";
          user = "${"max"}";
        };
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --greeting 'Welcome To NixOS' --asterisks --remember --remember-user-session --time --cmd Hyprland";
          user = "greeter";
        };
      };
    };
  };

  # Status bar
  programs.waybar.enable = true;
}
