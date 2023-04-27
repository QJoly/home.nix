let
  bg_dark = "#16161f";
  bg = "#1a1b26";
  bg_highlight = "#292e42";
  terminal_black = "#414868";
  fg = "#c0caf5";
  fg_dark = "#a9b1d6";
  fg_gutter = "#3b4261";
  dark3 = "#545c7e";
  comment = "#565f89";
  dark5 = "#737aa2";
  blue0 = "#3d59a1";
  blue = "#7aa2f7";
  cyan = "#7dcfff";
  blue1 = "#2ac3de";
  blue2 = "#0db9d7";
  blue5 = "#89ddff";
  blue6 = "#B4F9F8";
  blue7 = "#394b70";
  magenta = "#bb9af7";
  magenta2 = "#ff007c";
  purple = "#9d7cd8";
  orange = "#ff9e64";
  yellow = "#e0af68";
  green = "#9ece6a";
  green1 = "#73daca";
  green2 = "#41a6b5";
  teal = "#1abc9c";
  red = "#f7768e";
  red1 = "#db4b4b";
in
rec {

  home.file.".config/k9s/skin.yml".text = ''
    # Tokyonight colorscheme taken from:
    # https://raw.githubusercontent.com/folke/tokyonight.nvim/main/lua/tokyonight/colors.lua

    bg_dark: &bg_dark "${bg_dark}"
    bg: &bg "${bg}"
    bg_highlight: &bg_highlight "${bg_highlight}"
    terminal_black: &terminal_black "${terminal_black}"
    fg: &fg "${fg}"
    fg_dark: &fg_dark "${fg_dark}"
    fg_gutter: &fg_gutter "${fg_gutter}"
    dark3: &dark3 "${dark3}"
    comment: &comment "${comment}"
    dark5: &dark5 "${dark5}"
    blue0: &blue0 "${blue0}"
    blue: &blue "${blue}"
    cyan: &cyan "${cyan}"
    blue1: &blue1 "${blue1}"
    blue2: &blue2 "${blue2}"
    blue5: &blue5 "${blue5}"
    blue6: &blue6 "${blue6}"
    blue7: &blue7 "${blue7}"
    magenta: &magenta "${magenta}"
    magenta2: &magenta2 "${magenta2}"
    purple: &purple "${purple}"
    orange: &orange "${orange}"
    yellow: &yellow "${yellow}"
    green: &green "${green}"
    green1: &green1 "${green1}"
    green2: &green2 "${green2}"
    teal: &teal "${teal}"
    red: &red "${red}"
    red1: &red1 "${red1}"

    k9s:
      body:
        fgColor: *fg
        bgColor: *bg
        logoColor: *purple
      prompt:
        fgColor: *fg
        bgColor: *bg
        suggestColor: *orange
      help:
        fgColor: *fg
        bgColor: *bg_dark
        sectionColor: *blue5
        keyColor: *teal
        numKeyColor: *magenta
      info:
        fgColor: *green
        sectionColor: *fg
      dialog:
        fgColor: *blue5
        bgColor: *bg_dark
        buttonFgColor: *fg
        buttonBgColor: *blue2
        buttonFocusFgColor: *fg_gutter
        buttonFocusBgColor: *blue
        labelFgColor: *green
        fieldFgColor: *fg
      frame:
        border:
          fgColor: *blue0
          focusColor: *fg
        menu:
          fgColor: *fg
          keyColor: *teal
          numKeyColor: *magenta
        crumbs:
          fgColor: *fg_gutter
          bgColor: *dark3
          activeColor: *blue
        status:
          newColor: *blue
          modifyColor: *purple
          addColor: *yellow
          errorColor: *red1
          highlightColor: *cyan
          killColor: *red
          completedColor: *comment
        title:
          fgColor: *blue
          highlightColor: *blue5
          counterColor: *fg_dark
          filterColor: *blue
      views:
        charts:
          bgColor: *bg
          defaultDialColors:
            - *green
            - *red
          defaultChartColors:
            - *green
            - *red
        table:
          fgColor: *red
          bgColor: *bg_dark
          cursorFgColor: *bg_highlight
          cursorBgColor: *green
          markColor: *magenta
          header:
            fgColor: *blue1
            bgColor: *blue7
            sorterColor: *blue
        xray:
          fgColor: *fg_dark
          bgColor: *bg_dark
          cursorColor: *green2
          graphicColor: *green1
          showIcons: true
        yaml:
          keyColor: *green1
          colonColor: *green1
          valueColor: *green
        logs:
          fgColor: *blue6
          bgColor: *bg_dark
          indicator:
            fgColor: *blue1
            bgColor: *blue7
  '';
}

