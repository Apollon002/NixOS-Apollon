{ ... }:
{
  flake.modules.packages.apolloNvim =
    { pkgs, ... }:
    {
      vim = {
        extraPackages = with pkgs; [
          nixfmt # Formatter
          statix # Linter
        ];

        # enable language settings
        languages.nix.enable = true;

        # Linting
        diagnostics.nvim-lint = {
          linters_by_ft.nix = [ "statix" ];
        };

        # Formatting
        formatter.conform-nvim.setupOpts = {
          formatters_by_ft.nix = [ "nixfmt" ];
        };

        # Tab spacing
        luaConfigPost = ''
          vim.api.nvim_create_autocmd("FileType", {
            pattern = "nix",
            callback = function()
              vim.opt_local.expandtab = true
              vim.opt_local.shiftwidth = 2
              vim.opt_local.tabstop = 2
              vim.opt_local.softtabstop = 2
            end,
          })
        '';
      };
    };
}
