{
  flake.modules.nixos."hosts/silvermoon" = {
    disko.devices = {
      disk = {
        main = {
          device = "/dev/disk/by-id/nvme-eui.e8238fa6bf530001001b448b46dff49d";
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

        games = {
          device = "/dev/disk/by-id/nvme-eui.00000000000000000026b76866e30415";
          type = "disk";
          content = {
            type = "gpt";
            partitions = {
              root = {
                name = "GAMES";
                size = "100%";
                content = {
                  type = "filesystem";
                  format = "ext4";
                  extraArgs = [
                    "-L"
                    "GAMES"
                  ];
                  mountpoint = "/games";
                };
              };
            };
          };
        };

        misc = {
          device = "/dev/disk/by-id/wwn-0x5000c500cf89d9bf";
          type = "disk";
          content = {
            type = "gpt";
            partitions = {
              root = {
                name = "MISC";
                size = "100%";
                content = {
                  type = "filesystem";
                  format = "ext4";
                  extraArgs = [
                    "-L"
                    "MISC"
                  ];
                  mountpoint = "/misc";
                };
              };
            };
          };
        };
      };
    };
  };
}
