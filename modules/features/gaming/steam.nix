{
  flake.modules.nixos.gaming =
    { pkgs, ... }:
    {
      programs.steam = {
        enable = true;
        remotePlay.openFirewall = true;
        dedicatedServer.openFirewall = true;
        localNetworkGameTransfers.openFirewall = true;
        extraCompatPackages = with pkgs; [
          proton-ge-bin
        ];
      };

      # Additional tools
      environment.systemPackages = with pkgs; [
        mangohud # Performance monitoring
      ];
    };
}
