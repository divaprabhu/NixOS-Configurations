{ config, pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dvp = {
    isNormalUser = true;
    home = "/home/dvp";
    description = "Divakar V Prabhu ";
    extraGroups = [
      "wheel"
      "networkmanager"
      "vboxusers"
      "libvirtd"
    ];
  };
}
