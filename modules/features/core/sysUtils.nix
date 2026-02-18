{
  flake.modules.nixos.core =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        curl
        btop
        wget
        tree
        tldr
        sl
        zip
        unzip
        nh
        nix-output-monitor
        nvd
      ];
    };
}
