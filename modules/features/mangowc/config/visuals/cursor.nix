{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      cursor_size=24
      env=XCURSOR_SIZE,24
      cursor_theme=Bibata-Modern-Classic
    '';
  }; 
}
