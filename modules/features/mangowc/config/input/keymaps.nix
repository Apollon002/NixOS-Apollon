{
  flake.modules.homeManager.mango =
    { config, lib, ... }:
    let
      Browser = config.userSettings.defaultBrowser;
    in
    {
      wayland.windowManager.mango.settings = ''
        # Clients
        bind=SUPER,Return,spawn,kitty

        # Session Management
        bind=SUPER+CTRL,M,quit
        bind=SUPER+CTRL,R,reload_config

        # Window management
        bind=SUPER,q,killclient
        bind=ALT,tab,toggleoverview
        mousebind=SUPER,btn_left,moveresize,curmove
        mousebind=SUPER,btn_right,moveresize,curresize
        bind=SUPER+SHIFT,up,scroller_stack,up
        bind=SUPER+SHIFT,down,scroller_stack,down
        bind=SUPER+SHIFT,left,scroller_stack,left
        bind=SUPER+SHIFT,right,scroller_stack,right
        bind=SUPER,V,togglefloating

        # Navigation
        bind=SUPER,up,focusdir,up
        bind=SUPER,left,focusdir,left
        bind=SUPER,down,focusdir,down
        bind=SUPER,right,focusdir,right

        # Monitor focus
        bind=ALT,up,focusmon,up
        bind=ALT,left,focusmon,left
        bind=ALT,down,focusmon,down
        bind=ALT,right,focusmon,right

        # Workspace navigation
        axisbind=SUPER,UP,viewtoleft
        axisbind=SUPER,DOWN,viewtoright
        bind=SUPER,1,view,1
        bind=SUPER,2,view,2
        bind=SUPER,3,view,3
        bind=SUPER,4,view,4
        bind=SUPER,5,view,5
        bind=SUPER,6,view,6
        bind=SUPER,7,view,7
        bind=SUPER,8,view,8
        bind=SUPER,9,view,9

        # Presets
        bind=SUPER,R,switch_proportion_preset
        bind=SUPER,L,switch_layout

        # Fullscreen / maximize
        bind=SUPER,F,togglemaximizescreen
        bind=SUPER+SHIFT,F,togglefullscreen
        bind=SUPER+ALT,F,togglefakefullscreen

        # Audio
        bind=NONE,XF86AudioRaiseVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1+ -l 1.0
        bind=NONE,XF86AudioLowerVolume,spawn,wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.1-
        bind=NONE,XF86AudioMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
        bind=NONE,XF86AudioMicMute,spawn,wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

        # Media
        bind=NONE,XF86AudioPlay,spawn,playerctl play-pause
        bind=NONE,XF86AudioStop,spawn,playerctl stop
        bind=NONE,XF86AudioPrev,spawn,playerctl previous
        bind=NONE,XF86AudioNext,spawn,playerctl next

        # Brightness
        bind=NONE,XF86MonBrightnessUp,spawn,brightnessctl --class=backlight set +5%
        bind=NONE,XF86MonBrightnessDown,spawn,brightnessctl --class=backlight set 5%-
      ''
      + lib.optionalString (Browser != "") ''
        bind=SUPER,B,spawn,${Browser}
      '';
    };
}
