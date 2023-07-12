{ lib, pkgs, ... }: {

  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "discord"
  ];

  nixpkgs.config.allowUnfree = true;

  home.packages = with pkgs; [
    discord
    tdesktop
    thunderbird
  ];


  home.file.".config/discord/settings.json.ext".text = ''
    {
     "BACKGROUND_COLOR": "#202225",
     "IS_MAXIMIZED": false,
     "IS_MINIMIZED": false,
     "WINDOW_BOUNDS": {
       "x": 0,
       "y": 0,
       "width": 3440,
       "height": 1440
     },
     "SKIP_HOST_UPDATE": true
    } 
  '';
}
