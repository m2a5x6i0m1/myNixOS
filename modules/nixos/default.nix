{
  imports = [
    ./system/boot.nix
    ./system/env.nix
    ./system/network.nix
    ./system/nix-settings.nix
    ./system/opengl.nix
    ./system/sound.nix
    ./system/timezone.nix
    ./system/users.nix

    ./programs/firefox.nix
    ./programs/greetd.nix
    ./programs/hyprland.nix
    ./programs/neovim.nix
    ./programs/waybar.nix
    ./programs/zshell.nix

    ./packages.nix
  ];
}
