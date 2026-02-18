{
  flake.modules.homeManager.mango = {
    wayland.windowManager.mango.settings = ''
      borderpx=3
      gappih=16
      gappiv=16
      gappoh=16
      gappov=16

      border_radius=8
      focused_opacity = 1.0
      unfocused_opacity = 1.0
      no_radius_when_single=0
    '';
  };
}
