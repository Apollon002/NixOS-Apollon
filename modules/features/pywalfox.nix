{
  flake.modules.homeManager.pywalfox =
    { lib, pkgs, ... }:
    {
      home.packages = with pkgs; [
        pywalfox-native
      ];

      home.activation.installPywalfox = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        set -u
        ${pkgs.pywalfox-native}/bin/pywalfox install
      '';
    };
}
