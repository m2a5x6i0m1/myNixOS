{
  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Nvidia
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = true;

  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.powerManagement.enable = true;
}
