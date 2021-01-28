let
  url = "https://github.com/colemickens/nixpkgs-wayland/archive/master.tar.gz";
in
  (import (builtins.fetchTarball url))
