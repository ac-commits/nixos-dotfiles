{ config, pkgs, ... }:

{

# docker-clienta:
virtualisation.docker.enable = true;

# virtmanager replaced VMWare Workstation Pro
programs.virt-manager.enable = true;
users.groups.libvirtd.members = ["alex"];
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;
}
