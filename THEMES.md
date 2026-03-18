# Hypr Themes

Hyprland keeps using these active runtime files:

- `style.conf`
- `hyprlock.conf`
- `hyprpaper.conf`

Reusable theme presets live under `themes/<name>/`.

## Apply a theme

```bash
./scripts/apply-hypr-theme.sh gruvbox
./scripts/apply-hypr-theme.sh nord
```

The script copies the theme files into place, reloads Hyprland, and restarts `hyprpaper`.

## Apply Hyprland and Waybar together

If both projects have the same theme name:

```bash
./scripts/apply-desktop-theme.sh gruvbox
./scripts/apply-desktop-theme.sh nord
```

If the theme names differ, pass them separately:

```bash
./scripts/apply-desktop-theme.sh nord catpuccin
```

You can also choose a Waybar layout as the third argument:

```bash
./scripts/apply-desktop-theme.sh gruvbox forest default
```

## Install a global command

```bash
./scripts/install-hypr-theme-command.sh
./scripts/install-desktop-theme-command.sh
```

After that, you can switch themes from anywhere:

```bash
hypr-theme gruvbox
hypr-theme nord
apply-desktop-theme gruvbox
apply-desktop-theme nord
apply-desktop-theme nord catpuccin
```

## Create a new theme

1. Copy `themes/gruvbox` to `themes/<your-theme>`.
2. Edit `style.conf`, `hyprlock.conf`, and `hyprpaper.conf` in that folder.
3. Apply it with `./scripts/apply-hypr-theme.sh <your-theme>`.
