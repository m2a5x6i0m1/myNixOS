{pkgs, ...}: {
  # Boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 4;

  # Ligther Kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;
}
