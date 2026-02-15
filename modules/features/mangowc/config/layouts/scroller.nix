{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      scroller_structs=16
      scroller_default_proportion=0.5
      scroller_focus_center=0
      scroller_prefer_center=0
      edge_scroller_pointer_focus=1
      scroller_default_proportion_single=1.0
      scroller_ignore_proportion_single=0
      scroller_proportion_preset=0.5,0.8,1.0
    '';  
  }; 
}
