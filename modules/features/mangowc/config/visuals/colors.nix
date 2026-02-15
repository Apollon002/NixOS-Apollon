{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      focuscolor=0xd6afffff
      bordercolor=0x505050ff
      urgentcolor=0x9b0000ff
    '';
  }; 
}
