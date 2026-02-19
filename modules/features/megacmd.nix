{
  flake-file.inputs = {
    nixpkgs-megacmd.url = "github:lunik1/nixpkgs/megacmd-bin";
  };

  flake.modules.homeManager.megacmd =
    { inputs, pkgs, ... }:
    let
      megapkgs = inputs.nixpkgs-megacmd.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      home.packages = [ megapkgs.megacmd-bin ];

      systemd.user.services.mega-cmd-server = {
        Unit = {
          Description = "MEGA CMD Server (user)";
          After = [ "network-online.target" ];
          Wants = [ "network-online.target" ];
        };

        Service = {
          Type = "simple";
          ExecStart = "${megapkgs.megacmd-bin}/bin/mega-cmd-server";
          Restart = "on-failure";
          RestartSec = 5;
        };

        Install = {
          WantedBy = [ "default.target" ];
        };
      };
    };
}
