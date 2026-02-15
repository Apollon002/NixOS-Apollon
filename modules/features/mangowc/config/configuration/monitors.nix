{ ... }:
{
  flake.modules.homeManager.mango = { lib, hostname, ... }: {
    wayland.windowManager.mango.settings = lib.mkMerge [
      (lib.mkIf (hostname == "silvermoon") ''
        monitorrule=name:DP-3,width:2560,height:1440,refresh:165,x:1920,y:0
        monitorrule=name:DP-4,width:1920,height:1080,refresh:144,x:0,y:150
      '')
    ];
  }; 
}
