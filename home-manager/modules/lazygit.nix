{
  programs.lazygit = {
    enable = true;
    settings = {
      gui.showIcons = false;
      gui.theme = {
        lightTheme = false;
        activeBorderColor = ["green" "bold"];
        inactiveBorderColor = ["grey"];
        selectedLineBgColor = ["blue"];
      };
    };
  };
}
