{
  flake.modules.packages.apolloNvim = {
    vim.tabline.nvimBufferline = {
      enable = true;
      mappings = {
        closeCurrent = "<C-q>";
        cycleNext = "<C-right>";
        cyclePrevious = "<C-left>";
      };
    };
  };
}
