{
  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      # For less power consumption
      governor = "powersave";
      energy_performance_preference = "power";
      platform_profile = "low-power";
      turbo = "never";

      # Charging thresholds
      enable_thresholds = true;
      start_threshold = 80;
      stop_threshold = 100;
    };
    charger = {
      # We can afford this
      governor = "performance";
      platform_profile = "performance";
      turbo = "auto";
    };
  };
}
