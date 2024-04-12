THEME=Catppuccin-Latte
IMG=cat_minimal.jpg
# These theme images should be under .config/swww
# but I haven't copied them, so you know...

# Generate a rofi image
convert -strip -resize 2000 -gravity center -extent 2000 -quality 90 $THEME/$IMG $HOME/.config/swww/wall.rofi
# Generate a blur image for background
convert -strip -scale 10% -blur 0x3 -resize 100% $THEME/$IMG  $HOME/.config/swww/wall.blur
