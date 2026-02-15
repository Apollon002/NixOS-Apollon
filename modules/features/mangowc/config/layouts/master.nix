{ ... }:
{
  flake.modules.homeManager.mango = { ... }:
  {
    wayland.windowManager.mango.settings = ''
      new_is_master=1
      smartgaps=0
      default_mfact=0.55
      default_nmaster=1
    '';  
  }; 
}
