let
  dracula_plugin = "cpu-usage ram-usage network git attached-clients network-vpn time ram-usage";
  bg = "#1a1b26";
  bg_highlight = "#292e42";
in
rec {
  home.file.".tmux.conf".text = ''
set -g @plugin 'tmux-plugins/tpm'

# ---------- dracula --------------
set -g @plugin 'dracula/tmux'
# available plugins: battery, cpu-usage, git, gpu-usage, ram-usage, network, attached-clients, network-vpn, weather, time
set -g @dracula-plugins "${dracula_plugin}"
set -g @dracula-show-empty-plugins false
## available colors: white, gray, dark_gray, light_purple, dark_purple, cyan, green, orange, red, pink, yellow
set -g @dracula-cpu-usage-colors "red dark_gray"
set -g @dracula-ram-usage-colors "dark_purple dark_gray"
set -g @dracula-network-colors "light_purple dark_gray"
set -g @dracula-network-ping-colors "yellow dark_gray"
set -g @dracula-kubernetes-context-colors "cyan dark_gray"

set-option -g prefix C-Space

# ------ Mouse ---------------
set -g mouse on

# ------ Custom --------------

bind-key -n C-H previous-window
bind-key -n C-L next-window

# Automatiquement renommer 
setw -g automatic-rename on

# Alt-arrow keys to switch panes
bind -n M-Left select-pane -L
bind -n M-Right select-pane -R
bind -n M-Up select-pane -U
bind -n M-Down select-pane -D


run '~/.tmux/plugins/tpm/tpm'

  '';
}

