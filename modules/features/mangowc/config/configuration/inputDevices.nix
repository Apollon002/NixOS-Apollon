{
  flake.modules.homeManager.mango =
    { hostname, ... }:
    {
      wayland.windowManager.mango.settings = ''
        repeat_rate=40
        repeat_delay=200
        numlockon=1
        xkb_rules_layout=de

        mouse_natural_scrolling=0
        accel_profile=1
        accel_speed=0.0
        left_handed=0
        middle_button_emulation=0
        swipe_min_threshold=20
        send_events_mode=0
        button_map=0

        disable_trackpad=0
        tap_to_click=1
        tap_and_drag=1
        trackpad_natural_scrolling=0
        scroll_method=1
        click_method=1
        drag_lock=1
        disable_while_typing=1
        left_handed=0
        middle_button_emulation=0
        swipe_min_threshold=20
      '';
    };
}
