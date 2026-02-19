{
  flake.modules.nixos.documentIO = {
    services.printing.enable = true;
    # Discover printers in network automatically
    services.avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };
  };
}
