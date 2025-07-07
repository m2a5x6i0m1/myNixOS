{
  # Allow proprietary soft
  nixpkgs.config.allowUnfree = true;

  # Allow flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];

  # Automatic garbage collect
  nix.gc.automatic = true;
  nix.gc.dates = "daily";
  nix.gc.options = "--delete-older-than 7d";
  nix.settings.auto-optimise-store = true;
}
