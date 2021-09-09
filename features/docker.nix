{ pkgs, ... }: {
  virtualisation.docker.enable = true;

  users.users.srid = {
    extraGroups = [ "docker" ];
  };
}
