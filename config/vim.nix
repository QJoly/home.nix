{ pkgs, ... }: {

  programs.neovim = {
    enable = true;
    vimAlias = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
      plenary-nvim
      nerdtree
      vim-surround
      YouCompleteMe
      vim-hcl
      {
        plugin = lualine-nvim;
        config = "lua require('lualine').setup()";
      }
      {
        plugin = telescope-nvim;
        config = "lua require('telescope').setup()";
      }
      {
        plugin = indent-blankline-nvim;
        config = "lua require('indent_blankline').setup()";
      }
      {
        plugin = nvim-lspconfig;
        config = ''
          lua << EOF
          require('lspconfig').rust_analyzer.setup{}
          require('lspconfig').lua_ls.setup{}
          require('lspconfig').rnix.setup{}
          require('lspconfig').zk.setup{}
          EOF
        '';
      }
    ];

    extraConfig = ''
      set number
      set expandtab
      set hidden
    '';
  };
}
