{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.max = {
      isNormalUser = true;
      shell = pkgs.zsh;
      extraGroups = [
        "wheel"
        "input"
        "networkmanager"
      ];
    };
  };
}
