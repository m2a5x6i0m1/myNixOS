{
  # Allow Proprietary Soft
  nixpkgs.config.allowUnfree = true;

  # Allow Flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Store will take up less space on disk
  nix.settings.auto-optimise-store = true;
}
