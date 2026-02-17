{ ... }:
{
  flake.modules.packages.apolloNvim =
    { ... }:
    {
      vim.options = {
        expandtab = true; # Spaces instead of Tab character
        shiftwidth = 4; # tab steps for autoindent
        tabstop = 4; # show tab characters as 4 spaces
        softtabstop = 4; # insert 4 spaces when pressing tab
      };
    };
}
