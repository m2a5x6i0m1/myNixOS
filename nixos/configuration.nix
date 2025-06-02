{...}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/programs/default.nix
    ./modules/default.nix
    ./packages.nix
  ];

  # Allow flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "24.11"; # DO NOT CHANGE!
}
