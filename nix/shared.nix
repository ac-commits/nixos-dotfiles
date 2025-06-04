{ config, pkgs, ... }:

{

# enable networking
networking.networkmanager.enable = true;
hardware.bluetooth.enable = true;

# DNS settings
  networking.nameservers = [
    "9.9.9.9#dns.quad9.net"
    "149.112.112.112#dns.quad9.net"
  ];

  services.resolved = {
    enable = true;
    dnssec = "true";
    domains = [ "~." ];
    fallbackDns = [
      "9.9.9.9#dns.quad9.net"
      "149.112.112.112#dns.quad9.net"
    ];
    dnsovertls = "true";
  };

}
  # Virtualisation
  virtualisation = {
    docker = {
     enable = true;
    };
  };
  virtualisation.vmware.host.enable = true;
  hardware.nvidia-container-toolkit.enable = true;
