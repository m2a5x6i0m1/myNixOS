{
  # hardware.opengl has been changed to hardware.graphics
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = ["amdgpu"];
}
