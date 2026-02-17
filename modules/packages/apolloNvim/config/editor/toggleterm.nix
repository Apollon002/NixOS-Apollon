{ ... }:
{
  flake.modules.packages.apolloNvim =
    { ... }:
    {
      vim.terminal.toggleterm = {
        enable = true;
        mappings.open = "<leader>t";
        setupOpts = {
          direction = "float";
        };
        lazygit = {
          enable = true;
          direction = "float";
          mappings.open = "<leader>lg";
        };
      };
    };
}
