{...}: {
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./parts
  ];

  # Allow flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # For backwards compatibility
  system.stateVersion = "24.11";
}
