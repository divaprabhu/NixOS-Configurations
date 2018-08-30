{ config, pkgs, ... }:

{
  networking.hostName = "linux"; # Define your hostname.
  networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # networking.networkmanager.enable = true;
}
