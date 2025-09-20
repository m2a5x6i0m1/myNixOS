{ pkgs, ... }:
{
  # Fast systemd-boot in EFI mode
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.editor = false;

  # Kernel optimized for desktop use
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # No logs during boot, except for critical errors
  boot.kernelParams = [
    "quiet"
    "vga=current"
    "rd.systemd.show_status=false"
    "rd.udev.log_level=3"
    "udev.log_priority=3"
  ];
  boot.consoleLogLevel = 0;
}
