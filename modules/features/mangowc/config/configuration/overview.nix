{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      enable_hotarea=0
      hotarea_size=10
      ov_tab_mode=1
      overviewgappi=7
      overviewgappo=30
    '';  
  }; 
}
