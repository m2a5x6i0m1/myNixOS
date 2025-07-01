{...}: {
  # Time Zone
  time.timeZone = "Europe/Moscow";

  # Disable tpm
  systemd.tpm2.enable = false;

  # Don't suspend on lid close
  services.logind.lidSwitch = "ignore";
}
