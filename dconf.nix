{ lib, ... }:

{
  "org/gnome/desktop/input-sources" = {
    per-window = false;
    sources = with lib.hm.gvariant; [
      (mkTuple [ "xkb" "us" ])
      (mkTuple [ "xkb" "ua" ])
      (mkTuple [ "ibus" "anthy" ])
    ];
    
    xkb-options = [
      "compose:ralt"
      "shift:both_capslock"
      "caps:hyper"
    ];
  };

  "org/gnome/desktop/interface" = {
    cursor-size = 12;
    cursor-theme = "Posy_Cursor";
    gtk-theme = "Materia-dark";
    font-name = "sans-serif 11";
    icon-theme = "Papirus-Dark";
  };

  "org/gnome/desktop/wm/keybindings" = {
    move-to-workspace-1 = [ "<Shift><Alt>1" ];
    move-to-workspace-2 = [ "<Shift><Alt>2" ];
    move-to-workspace-3 = [ "<Shift><Alt>3" ];
    move-to-workspace-4 = [ "<Shift><Alt>4" ];
    move-to-workspace-5 = [ "<Shift><Alt>5" ];
    move-to-workspace-6 = [ "<Shift><Alt>6" ];
    switch-input-source = [ "<Alt>Hyper_L" ];
    switch-input-source-backward = [ "<Shift><Alt>Hyper_L" ];
    switch-to-workspace-1 = [ "<Alt>1" ];
    switch-to-workspace-2 = [ "<Alt>2" ];
    switch-to-workspace-3 = [ "<Alt>3" ];
    switch-to-workspace-4 = [ "<Alt>4" ];
    switch-to-workspace-5 = [ "<Alt>5" ];
    switch-to-workspace-6 = [ "<Alt>6" ];
  };

  "org/gnome/desktop/wm/preferences" = {
    mouse-button-modifier = "<Alt>";
    num-workspaces = 6;
    workspace-names = [ "α" "β" "γ" "δ" "ε" "ϛ" ];
  };

  "org/gnome/evince/default" = {
    continuous = true;
    dual-page = true;
    dual-page-odd-left = true;
    show-sidebar = true;
    sizing-mode = "fit-page";
  };

  "org/gnome/shell" = {
    disable-user-extensions = false;

    enabled-extensions = [
      "appindicatorsupport@rgcjonas.gmail.com"
      "auto-move-windows@gnome-shell-extensions.gcampax.github.com"
      "workspaces-by-open-apps@favo02.github.com"
    ];

    favorite-apps = [
      "firefox.desktop"              # 1st workspace
      "org.telegram.desktop.desktop" # 2nd workspace
      "vesktop.desktop"              # 3rd workspace
      "steam.desktop"                # 4th workspace
      "emacs.desktop"                # 5th workspace
      "pycharm-community.desktop"
      "writer.desktop"
      "org.gnome.Rhythmbox3.desktop" # 6th workspace
      "org.gnome.Calculator.desktop" # any workspace
      "org.gnome.Nautilus.desktop"
      "com.mitchellh.ghostty.desktop"
    ];
  };
}
