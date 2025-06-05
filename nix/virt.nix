{ config, pkgs, ... }:

{

programs.virt-manager.enable = true;
users.groups.libvirtd.members = ["alex"];
virtualisation.libvirtd.enable = true;
virtualisation.spiceUSBRedirection.enable = true;

}
