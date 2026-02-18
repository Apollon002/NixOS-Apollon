{
  flake.modules = {
    homeManager.desktop =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          wl-clipboard
          cliphist
          wl-clip-persist
        ];

        systemd.user.services.wl-clip-persist = {
          Unit = {
            Description = "Persist Wayland Clipboard";
            PartOf = [ "graphical-session.target" ];
            After = [ "graphical-session.target" ];
          };
          Service = {
            ExecStartPre = "${pkgs.coreutils}/bin/sleep 5";
            ExecStart = "${pkgs.wl-clip-persist}/bin/wl-clip-persist --clipboard regular --reconnect-tries 0";
            Restart = "always";
          };
          Install = {
            WantedBy = [ "graphical-session.target" ];
          };
        };

        systemd.user.services.cliphist = {
          Unit = {
            Description = "Cliphist Wayland Clipboard Manager";
            PartOf = [ "graphical-session.target" ];
            After = [ "graphical-session.target" ];
          };
          Service = {
            ExecStartPre = "${pkgs.coreutils}/bin/sleep 5";
            ExecStart = "${pkgs.wl-clipboard}/bin/wl-paste --watch ${pkgs.cliphist}/bin/cliphist store";
            Restart = "always";
          };
          Install = {
            WantedBy = [ "graphical-session.target" ];
          };
        };
      };
  };
}
