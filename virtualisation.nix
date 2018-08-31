{ config, pkgs, ... }:

{
virtualisation = {
    virtualbox = {
      host.enable = true;
    };
    libvirtd.enable = true;
  };

}
