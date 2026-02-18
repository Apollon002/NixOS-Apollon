{
  flake.modules.homeManager.mango =
    { config, lib, ... }:
    {
      wayland.windowManager.mango.settings = ''
        exec-once=dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
      ''
      + lib.optionalString config.programs.dank-material-shell.enable ''
        exec-once=dms run --session
      '';
    };
}
