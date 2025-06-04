{ config, pkgs, ... }:

{
  home.username = "alex";
  home.homeDirectory = "/home/alex";
  home.stateVersion = "25.05";

  nixpkgs.config.allowUnfree = true;

  imports = [
  ./firefox.nix
  ];

  home.packages = with pkgs; [
    # Desktop apps
    firefox
    chromium
    okular
    spotify
    flameshot
    i3
    polybarFull
    dunst
    ranger
    rofi
    discord
    signal-desktop
    # networking
    networkmanager
    networkmanager_dmenu
    # editors
    neovim
    emacs
    emacs-all-the-icons-fonts
    nerd-fonts.sybols-only
    nerd-fonts.gohufont
    fd
    clang
    hunspell
    hunspellDicts.nl_NL
    hunspellDicts.en_US
    # cli
    alacritty
    htop
    neofetch
    bat
    git
    ripgrep
    fzf
    termdown
    xclip
    # sound and display
    pavucontrol
    arandr
    brightnessctl
    feh
    betterlockscreen
    # latex
    texlive.combined.sheme-full
    rubber
  ];

  programs.zsh = {
    enable = true;
    ohMyZsh.enable = true;
    ohMyZsh.theme = "agnoster";
    ohMyZsh.plugins = [ "git" "z" ];
  };

  programs.git = {
    enable = true;
    userName = "Alex Crom";
    userEmail = "cromalex@proton.me";
  };

  programs.bat.enable = true;
  programs.neovim.enable = true;

  # Enable direnv + nix-direnv
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
}
