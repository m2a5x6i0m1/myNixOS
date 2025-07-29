{
  # OpenGL
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Nvidia
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = true;
}
