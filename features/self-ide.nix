{ pkgs, inputs, ... }: {
  # For no-prompt Ctrl+Shift+B in VSCode
  security.sudo.extraRules = [
    {
      users = [ "srid" ];
      commands = [
        {
          command = "/run/current-system/sw/bin/nixos-rebuild";
          options = [ "NOPASSWD" ];
        }
        # HACK: See thin.nix power commands
        {
          command = "/run/current-system/sw/bin/systemctl";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];
}
