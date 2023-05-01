FROM nixos/nix
RUN nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager \
    && nix-channel --update
RUN nix-env -e man-db-2.10.2
RUN nix-env -q && nix-shell '<home-manager>' -A install