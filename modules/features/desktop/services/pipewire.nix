{ ... }:
{
  flake.modules.nixos.desktop = { lib, ... }: {
    security.rtkit.enable = true; # to give pipewire realtime priority
    services.pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      jack.enable = true;
      pulse.enable = true;
    };

    # make sure pulseaudio is not enable while pipewire is active
    services.pulseaudio.enable = lib.mkForce false; 
  };
}
