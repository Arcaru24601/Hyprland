#!/usr/bin/env zsh

# Capture the current monitor setup
monitors=$(hyprctl monitors)

# Debug output to check monitor information
echo "Monitors detected: $monitors" >> /tmp/lid_debug.log

# Check for the presence of the external monitor HDMI-A-1
if [[ "$monitors" =~ "HDMI-A-1" ]]; then
  #echo "External monitor HDMI-A-1 is connected." >> /tmp/lid_debug.log
  if [[ $1 == "open" ]]; then
    # Enable laptop monitor
    #echo "Lid opened: enabling eDP-1." >> /tmp/lid_debug.log
    hyprctl keyword monitor "eDP-1,1920x1080,0x0,1"
  elif [[ $1 == "close" ]]; then
    # Disable laptop monitor
    #echo "Lid closed: disabling eDP-1." >> /tmp/lid_debug.log
    hyprctl keyword monitor "eDP-1,disable"
  else
    #echo "Invalid argument: $1. Use 'open' or 'close'." >> /tmp/lid_debug.log
  fi
else
  #echo "External monitor HDMI-A-1 not detected. No action taken." >> /tmp/lid_debug.log
fi


