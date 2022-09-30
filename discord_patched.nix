with import <nixpkgs> {};
pkgs.discord.override {
    nss = pkgs.nss_latest;
}
