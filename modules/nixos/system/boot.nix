{ pkgs, ... }:
{
  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 4;

  # Lighter Kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;
}
