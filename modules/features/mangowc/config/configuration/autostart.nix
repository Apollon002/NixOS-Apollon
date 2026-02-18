{
  flake.modules.homeManager.mango = {
    wayland.windowManager.mango.settings = ''
      exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
    '';
  };
}
