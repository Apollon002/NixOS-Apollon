{
  flake.modules.homeManager.mango =
    { lib, ... }:
    {
      wayland.windowManager.mango.settings = ''
        animations=1
        animation_type_open=slide

        animation_duration_move=200
        animation_duration_open=260
        animation_duration_tag=200
        animation_duration_close=260
        animation_duration_focus=0

        animation_curve_open=0.33,1.0,0.68,1
        animation_curve_move=0.33,1.0,0.68,1
        animation_curve_tag=0.33,1.0,0.68,1
        animation_curve_close=0.33,1.0,0.68,1

        tag_animation_direction=0
      '';
    };
}
