{ ... }:
{
  flake.modules.packages.apolloNvim = { ... }: {
    vim.fzf-lua = {
      enable = true;
      profile = "telescope";
    };
    vim.keymaps = [
      {
        mode = "n";
        key = "<leader>ff";
        action = "<CMD>FzfLua files<CR>";
        desc = "Open file fuzzy find";
      }
      {
        mode = "n";
        key = "<leader>fg";
        action = "<CMD>FzfLua live_grep<CR>";
        desc = "Oil live grep";
      }
    ];
  };
}
