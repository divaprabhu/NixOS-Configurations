{ config, pkgs, ... }:

{
  # automatic upgrades
  system.autoUpgrade = {
    enable = true;
    dates = "";
  };
  systemd.timers.nixos-upgrade.timerConfig = {
    OnCalendar = pkgs.lib.mkForce "weekly";
    Persistent = true;
    RandomizedDelaySec = "1h";
  };

  # garbage collect old generations
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 7d";
    dates = "";
  };

  systemd.timers.nix-gc.timerConfig = {
    OnCalendar = pkgs.lib.mkForce "weekly";
    Persistent = true;
    RandomizedDelaySec = "1h";
  };
}
