{ ... }:
{
  flake.modules.homeManager.mango =
    { ... }:
    {
      wayland.windowManager.mango.settings = ''
        xwayland_persistence=1
        allow_tearing=0
        allow_lock_transparent=1
        allow_shortcuts_inhibit=1
        syncobj_enable=1
        adaptive_sync=0

        focus_on_activate=1
        sloppyfocus=0
        warpcursor=1
        cursor_hide_timeout=60
        drag_tile_to_tile=1
        axis_bind_apply_timeout=100
        axis_scroll_factor=1.0

        focus_cross_monitor=0
        exchange_cross_monitor=1
        focus_cross_tag=0
        view_current_to_back=0
        scratchpad_cross_monitor=1
        single_scratchpad=1

        enable_floating_snap=0
        snap_distance=30
        no_border_when_single=0
        idleinhibit_ignore_visible=0

        circle_layout=scroller,tile
      '';
    };
}
