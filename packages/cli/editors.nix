{ pkgs, ... }: {

  home.packages = with pkgs; [
    #    neovim
    tmux
    lua-language-server
    vimPlugins.Vundle-vim
  ];
}

