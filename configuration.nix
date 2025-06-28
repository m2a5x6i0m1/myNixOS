{...}: {
  imports = [
    ./modules/nixos/hardware-configuration.nix
    ./modules/nixos/packages.nix
    ./modules/nixos/default.nix
  ];

  # Allow flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # For backwards compatibility
  system.stateVersion = "24.11";
}
