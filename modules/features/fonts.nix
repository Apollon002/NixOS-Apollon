{
  flake.modules = {

    nixos.fonts =
      { pkgs, ... }:
      {
        fonts.packages = with pkgs; [
          noto-fonts
          noto-fonts-cjk-sans
          noto-fonts-cjk-serif
          nerd-fonts.symbols-only
          noto-fonts-monochrome-emoji
        ];
      };

    homeManager.fonts =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          nerd-fonts.fira-code
          roboto
        ];
      };
  };
}
