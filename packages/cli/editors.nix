{ pkgs, ... }: {

  home.packages = with pkgs; [
    #    neovim
    lua-language-server
    vimPlugins.Vundle-vim
  ];
}

