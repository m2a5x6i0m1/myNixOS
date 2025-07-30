{
  imports = [
    ./system/bluetooth.nix
    ./system/boot.nix
    ./system/env.nix
    ./system/graphics.nix
    ./system/network.nix
    ./system/nix-settings.nix
    ./system/security.nix
    ./system/sound.nix
    ./system/timezone.nix
    ./system/users.nix

    ./programs/firefox.nix
    ./programs/ghostty.nix
    ./programs/greetd.nix
    ./programs/hyprland.nix
    ./programs/neovim.nix
    ./programs/waybar.nix
    ./programs/zshell.nix
  ];
}
