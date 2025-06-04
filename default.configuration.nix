{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      <home-manager/nixos>
    ];

  system.stateVersion = "25.05";

  networking.hostName = "nixbox"; # change to your preferred hostname

  time.timeZone = "Europe/Berlin"; # set your timezone

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.nixuser = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ]; # wheel = sudo
    shell = pkgs.zsh;
  };

  environment.systemPackages = with pkgs; [
    wget
    curl
    git
    vim
    neovim
  ];

  services.openssh.enable = true;
  services.getty.autoLogin.enable = true;
  services.getty.autoLogin.user = "nixuser";

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable zsh as default shell
  programs.zsh.enable = true;

  # Home Manager config
  home-manager.users.nixuser = import ./home.nix;
}
