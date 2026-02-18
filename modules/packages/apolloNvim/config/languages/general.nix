{
  flake.modules.packages.apolloNvim =
    { lib, ... }:
    {
      vim = {

        # Treesitter
        languages.enableTreesitter = true;
        treesitter.indent.enable = false;

        # LSP
        lsp.enable = true;

        # Linting
        diagnostics.nvim-lint.enable = true;

        # Formatting
        formatter.conform-nvim = {
          enable = true;
          setupOpts.format_on_save = {
            timeout_ms = 500;
            lsp_fallback = true;
          };
        };

        # Diagnostics
        diagnostics = {
          enable = true;
          config.virtual_text = {
            format = lib.generators.mkLuaInline ''
              function(diagnostic)
                           return string.format("%s (%s)", diagnostic.message, diagnostic.source)
                         end
            '';
          };
        };
        # Keymaps
        keymaps = [
          {
            mode = "n";
            key = "<leader>f";
            action = "<CMD>lua require('conform').format({ lsp_fallback = true })<CR>";
            desc = "Format file";
          }
          {
            mode = "n";
            key = "<leader>l";
            action = "<CMD>lua require('lint').try_lint()<CR>";
            desc = "Format file";
          }
        ];
      };
    };
}
