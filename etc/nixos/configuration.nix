{ config, pkgs, ... }:

{
  
  imports = [
      ./hardware-configuration.nix
      ./cachix.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
  
  # Kernel config
    boot = {
      kernelPackages = pkgs.linuxPackages_testing;
      kernelParams = [ "intel_pstate=active" ];
      kernelModules = [ "kvm-intel" "coretemp" ];
      initrd.kernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sr_mod" "rtsx_usb_sdmmc" ];
  };
  
  # Virtualisation settings
    virtualisation = {
      libvirtd.enable = true;
      docker.enable = true;
    };

  # Security settings
    security = {
      polkit.enable = true;
      doas.enable = true;
    };

  # Network setup
    networking = {
      hostName = "wright"; # Define your hostname.
      networkmanager.enable = true;
      interfaces.enp2s0.useDHCP = true;
      interfaces.wlp3s0.useDHCP = true;
  };

  # Select internationalisation properties.
    i18n.defaultLocale = "en_GB.UTF-8";
      console = {
      keyMap = "pl";
    };

  # Set your time zone.
    time.timeZone = "Europe/Dublin";

  # List packages installed in system profile.
    environment = { 
      systemPackages = with pkgs; [ 
         git
         gcc 
         zig
         lua
         wget 
         curl
         qemu
         nixfmt
         cachix
         nodejs
         gtk_engines
         virt-manager
         polkit_gnome 
         gtk-engine-murrine 
         xdg-desktop-portal-wlr
         gsettings-desktop-schemas 
     ];
      pathsToLink = [ "/libexec" ];	
  };

  # Enable sound.
    sound.enable = true;
	
  # Dbus erros
    services.dbus.packages = with pkgs; [ gnome2.GConf ];

  # dcomf (gtk error)
    programs.dconf.enable = true;

  # Hardware config
    hardware = {
      pulseaudio = {
        enable = true;
      };
      opengl = {
        enable = true;
        extraPackages = with pkgs; [
          intel-media-driver 
          vaapiIntel 
          vaapiVdpau
          libvdpau-va-gl
        ];
      };
      cpu.intel.updateMicrocode = true;
    };

  # Enable the X11 windowing system.
    services.xserver = {
      enable = true; 
      layout = "pl"; 
      xkbOptions = "eurosign:u"; 
      libinput.enable = true;
      displayManager = {
        lightdm.enable = true;
        autoLogin.enable = true;
        autoLogin.user = "bran";
        defaultSession = "none+herbstluftwm";
      };
      windowManager.herbstluftwm.enable = true;
    };

 # Sway Compositor
   programs.sway = {
     enable = true;
     wrapperFeatures.base = true;
     wrapperFeatures.gtk = true;
     extraPackages = with pkgs; [
       mako
       grim
       wofi
       slurp
       waybar
       swaybg
       swayidle
       swaylock
       xwayland
       flashfocus
       wf-recorder
       wl-clipboard
       sway-contrib.grimshot
    ];
  };

  # Font config
    fonts.fonts = with pkgs; [
    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "Terminus" ]; })
      cozette
      dina-font
      noto-fonts
	  noto-fonts-cjk
	  noto-fonts-emoji
	  terminus_font_ttf
    ];

  # Enable Oh-my-zsh
    programs.zsh.ohMyZsh = {
      enable = true;
      plugins = [ "git" "sudo" "docker" ];
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
    users = {
      mutableUsers = true;
      defaultUserShell = pkgs.zsh;
      users = {
        bran = { 
          isNormalUser = true;
          extraGroups = [ "wheel" "networkmanager" "docker" ];
          initialPassword = "password";
        };
      };
    };

  system.stateVersion = "21.03";

}

