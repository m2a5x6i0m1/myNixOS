{ pkgs, ... }:
{
  services = {
    greetd = {
      enable = true;
      settings = {
        initial_session = {
          command = "${pkgs.tuigreet}/bin/tuigreet -r -c 'uwsm start hyprland-uwsm.desktop' --asterisks --time";
          user = "greeter";
        };
        default_session = {
          command = "${pkgs.tuigreet}/bin/tuigreet -r -c 'uwsm start hyprland-uwsm.desktop' --asterisks --time";
          user = "greeter";
        };
      };
    };
  };
}
