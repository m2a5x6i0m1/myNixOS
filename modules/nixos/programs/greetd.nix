{ pkgs, ... }:
{
  services = {
    greetd = {
      enable = true;
      settings = {
        initial_session = {
          command = "uwsm start hyprland-uwsm.desktop";
          user = "max";
        };
        # By adding default_session it ensures you can still access the tty terminal if you logout of your windows manager otherwise you would just relaunch into it.
        default_session = {
          # Again here just change "-cmd Hyprland" to "-cmd your-start-command".
          command = "${pkgs.tuigreet}/bin/tuigreet --asterisks --remember --remember-user-session --time -cmd uwsm start hyprland-uwsm.desktop";
          user = "greeter"; # DO NOT CHANGE THIS USER
        };
      };
    };
  };
}
