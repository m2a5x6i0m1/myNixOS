{ pkgs, ... }:
{
  gtk = {
    enable = true;
    colorScheme = "dark";
    theme.name = "catppuccin-mocha-peach-standard";
    theme.package = pkgs.catppuccin-gtk.override {
      accents = [ "peach" ];
      size = "standard";
      variant = "mocha";
    };
  };
  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };
}
