{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      focuscolor=0xd6afffff
      maximizescreencolor=0x5e5ad8ff
      scratchpadcolor=0x5e5ad8ff
      bordercolor=0x505050ff
      urgentcolor=0x9b0000ff
    '';
  }; 
}
