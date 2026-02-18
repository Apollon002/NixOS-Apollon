{
  flake.modules.packages.apolloNvim = {
    vim = {
      utility.oil-nvim = {
        enable = true;
        gitStatus.enable = true;
      };

      keymaps = [
        {
          mode = "n";
          key = "<leader>ee";
          action = "<CMD>Oil<CR>";
          desc = "Oil file explorer";
        }
      ];
    };
  };
}
