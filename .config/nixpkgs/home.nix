{ config, pkgs, ... }:

{

  home.username = "bran";
  home.homeDirectory = "/home/bran";
  home.packages = with pkgs; [

  # System utils  
    mpv oguri sxhkd zathura flashfocus pavucontrol scrcpy polybar font-manager rofi gnome3.nautilus dunst picom

  # Terminals, IDEs and Editors
    alacritty starship neovim-nightly jetbrains.idea-community

  # Terminal apps and utils
    fzf exa unp xclip libnotify feh scrot maim slop xdotool ffmpeg hsetroot ranger 

  # Chat
    tdesktop discord discocss
  
  # Music
    playerctl spotify youtube-dl

  # Games
    minecraft multimc

  # Web
    google-chrome qutebrowser

  ];

 programs.git = {
    enable = true;
    userName  = "hidden";
    userEmail = "hidden";
  };

  gtk = {
    enable = true;
    theme = let
        phocus = pkgs.stdenv.mkDerivation {
          name = "elkowars_phocus";
          src = builtins.fetchTarball https://github.com/branwright1/gtk/archive/master.tar.gz;
          nativeBuildInputs = [ pkgs.sass ];
          installFlags = [ "DESTDIR=$(out)" "PREFIX=" ];
        };
      in {
      package = phocus;
      name = "elkowars_phocus";
    };
  };

  wayland.windowManager.BlackQuartz = {
    enable = true;
    heliodor = {
      enable = true;
      logLevel = "debug";
    };
    transform = "tiling";
    decorations = {
      borderSize = 3;
      borderColor = "#79695a";
      backgroundColor = "#201e1a";
    };
  };

  programs.home-manager.enable = true;

  home.stateVersion = "21.03";

}
