#!/bin/bash

# ml4w_cache_folder="$HOME/.cache/ml4w/hyprland-dotfiles"
ml4w_cache_folder="$HOME/.config/ml4w/cache"

generated_versions="$ml4w_cache_folder/wallpaper-generated"

rm $generated_versions/*
echo ":: Wallpaper cache cleared"
notify-send "Wallpaper cache cleared"
