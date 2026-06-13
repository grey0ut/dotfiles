-------------------
---- AUTOSTART ----
-------------------

local func = require("conf.functions")

if func.is_laptop() then
    hl.on("hyprland.start", function ()
      hl.exec_cmd("hyprpaper")
      hl.exec_cmd("/usr/lib/pam_kwallet_init")
      hl.exec_cmd("systemctl --user start plasma-polkit-agent")
      hl.exec_cmd("nextcloud --background")
      hl.exec_cmd("hypridle")
      hl.exec_cmd("qs -c noctalia-shell")
    end)
else
    hl.on("hyprland.start", function () 
      hl.exec_cmd("swaync & hyprpaper")
      hl.exec_cmd("~/.config/waybar/scripts/startwaybar.sh")
      hl.exec_cmd("/usr/lib/pam_kwallet_init")
      hl.exec_cmd("systemctl --user start plasma-polkit-agent")
      hl.exec_cmd("nextcloud")
      hl.exec_cmd("hypridle")
    end)
end

