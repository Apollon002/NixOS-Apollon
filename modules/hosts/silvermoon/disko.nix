{
  flake.modules.nixos."hosts/silvermoon" = {
    disko.devices = {
      disk = {
        main = {
          device = "/dev/disk/by-id/nvme-eui.00000000000000000026b76866e30415";
          type = "disk";
          content = {
            type = "gpt";
            partitions = {
              ESP = {
                name = "ESP";
                type = "EF00";
                size = "1G";
                content = {
                  type = "filesystem";
                  format = "vfat";
                  mountpoint = "/boot";
                  mountOptions = [ "umask=0077" ];
                  extraArgs = [
                    "-n"
                    "ESP"
                  ];
                };
              };

              swap = {
                name = "SWAP";
                size = "4G";
                content = {
                  type = "swap";
                  discardPolicy = "both";
                };
              };

              root = {
                name = "NIXOS";
                size = "100%";
                content = {
                  type = "filesystem";
                  format = "ext4";
                  extraArgs = [
                    "-L"
                    "NIXOS"
                  ];
                  mountpoint = "/";
                };
              };
            };
          };
        };
      };
    };
  };
}
