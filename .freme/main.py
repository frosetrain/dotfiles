"""Theme changer for my rice."""

from os import system

import click

THEME_NAMES = ["nord", "dracula", "catppuccin", "onedark"]


def change_theme(theme: str) -> None:
    """Change the theme.

    Raises:
        ValueError: Theme name is invalid

    Args:
        theme (str): The name of the theme
    """
    if theme not in THEME_NAMES:
        raise ValueError("Invalid theme name")

    # Hyprland
    system(f"cp ~/.freme/hypr/{theme}.conf ~/.config/hypr/colors.conf")

    # Waybar
    system(f"cp ~/.freme/waybar/{theme}.sass ~/.config/waybar/src/colors.sass")
    system("sass ~/.config/waybar/src/style.sass ~/.config/waybar/style.css")
    system("pkill waybar; waybar &")

    # Neovim
    nvim_theme = theme
    if theme == "catppuccin":
        nvim_theme = "catppuccin_macchiato"
    with open("/home/zixi/.config/nvim/lua/theme.lua", "w", encoding="utf-8") as file:
        file.writelines([f"vim.cmd('colo {nvim_theme}')"])

    # kitty
    system(f"cp ~/.freme/kitty/{theme}.conf ~/.config/kitty/theme.conf")

    # GTK (requires adw-gtk3 and the symlink)
    system(f"cp ~/.freme/gtk/{theme}.css ~/.config/gtk-4.0/gtk.css")

    # Rofi
    system(f"cp ~/.freme/rofi/{theme}.rasi ~/.config/rofi/colors.rasi")

    # swww (wallpaper)
    system(f"swww img ~/.freme/wallpapers/{theme}.png")
    system(f"cp ~/.freme/wallpapers/{theme}.png ~/.freme/wallpaper.png")


@click.command()
@click.option("--theme", prompt="Desired theme", help="The theme to apply.")
def hello(theme):
    """Apply the color scheme."""
    click.echo(f"Applying {theme}")
    change_theme(theme)


if __name__ == "__main__":
    hello()
