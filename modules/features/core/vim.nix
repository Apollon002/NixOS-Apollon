{
  flake.modules.nixos.core = { ... }: {
    programs.vim.enable = true;
  };
}