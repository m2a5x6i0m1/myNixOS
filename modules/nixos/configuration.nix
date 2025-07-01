{...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./parts
  ];

  # For backwards compatibility
  system.stateVersion = "24.11";
}
