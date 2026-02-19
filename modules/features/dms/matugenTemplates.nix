{
  flake.modules.homeManager.dms = {
    xdg.configFile."matugen/templates/starship-colors.toml".text = ''

      format = "[](color_bar1)$os$username[](bg:color_bar2 fg:color_bar1)$directory[](fg:color_bar2 bg:color_bar3)$git_branch$git_status[](fg:color_bar3 bg:color_bar4)$c$cpp$rust$golang$nodejs$php$java$kotlin$haskell$python[](fg:color_bar4 bg:color_bar5)$docker_context$conda$pixi[](fg:color_bar5)$line_break$character"
      palette = "matugen_dark"

      [c]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = " "

      [character]
      disabled = false
      error_symbol = "[](bold fg:color_red)"
      success_symbol = "[](bold fg:color_bar1)"
      vimcmd_replace_one_symbol = "[](bold fg:color_bar5)"
      vimcmd_replace_symbol = "[](bold fg:color_bar5)"
      vimcmd_symbol = "[](bold fg:color_bar1)"
      vimcmd_visual_symbol = "[](bold fg:color_bar2)"

      [conda]
      format = "[[ $symbol( $environment) ](fg:#83a598 bg:color_bar5)]($style)"
      style = "bg:color_bar5"

      [cpp]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = " "

      [directory]
      format = "[ $path ]($style)"
      style = "fg:color_text bg:color_bar2"
      truncation_length = 3
      truncation_symbol = "…/"

      [directory.substitutions]
      Developer = "󰲋 "
      Documents = "󰈙 "
      Downloads = " "
      Music = "󰝚 "
      Pictures = " "

      [docker_context]
      format = "[[ $symbol( $context) ](fg:#83a598 bg:color_bar5)]($style)"
      style = "bg:color_bar5"
      symbol = ""

      [git_branch]
      format = "[[ $symbol $branch ](fg:color_text-inverse bg:color_bar3)]($style)"
      style = "bg:color_bar3"
      symbol = ""

      [git_status]
      format = "[[($all_status$ahead_behind )](fg:color_text-inverse bg:color_bar3)]($style)"
      style = "bg:color_bar3"

      [golang]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [haskell]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [java]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [kotlin]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [line_break]
      disabled = false

      [nodejs]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [os]
      disabled = false
      style = "bg:color_bar1 fg:color_text"

      [os.symbols]
      AOSC = ""
      Alpine = ""
      Amazon = ""
      Android = ""
      Arch = "󰣇"
      Artix = "󰣇"
      CentOS = ""
      Debian = "󰣚"
      EndeavourOS = ""
      Fedora = "󰣛"
      Gentoo = "󰣨"
      Linux = "󰌽"
      Macos = "󰀵"
      Manjaro = ""
      Mint = "󰣭"
      NixOS = ""
      Pop = ""
      Raspbian = "󰐿"
      RedHatEnterprise = "󱄛"
      Redhat = "󱄛"
      SUSE = ""
      Ubuntu = "󰕈"
      Windows = "󰍲"

      [palettes.matugen_dark]
      color_bar1 = "{{colors.primary_container.default.hex}}"
      color_bar2 = "{{colors.secondary_container.default.hex}}"
      color_bar3 = "{{colors.primary_fixed_dim.default.hex}}"
      color_bar4 = "{{colors.secondary.default.hex}}"
      color_bar5 = "{{colors.on_secondary_container.default.hex}}"
      color_green = "#98971a"
      color_purple = "#b16286"
      color_red = "#cc241d"
      color_text = "{{colors.on_surface.default.hex}}"
      color_text-inverse = "{{colors.inverse_on_surface.default.hex}}"

      [php]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [pixi]
      format = "[[ $symbol( $version)( $environment) ](fg:color_text-inverse bg:color_bar5)]($style)"
      style = "bg:color_bar5"

      [python]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [rust]
      format = "[[ $symbol( $version) ](fg:color_text-inverse bg:color_bar4)]($style)"
      style = "bg:color_bar4"
      symbol = ""

      [time]
      disabled = false
      format = "[[  $time ](fg:color_text-inverse bg:color_bar6)]($style)"
      style = "bg:color_bar6"
      time_format = "%R"

      [username]
      format = "[ $user ]($style)"
      show_always = true
      style_root = "bg:color_bar1 fg:color_text"
      style_user = "bg:color_bar1 fg:color_text"
    '';
  };
}
