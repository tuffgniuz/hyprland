<div align="center">
<img src="res/icon.png" />

# Hyprland Configuration

**A streamlined, keyboard-centric, and performance-focused Hyprland setup.**

</div>

This configuration is built for speed, efficiency, and a seamless developer workflow. It emphasizes keyboard-driven navigation with Vim-style motions, dedicated scratchpads for multitasking, and a clean, modern aesthetic that stays out of your way.

<img src="res/hyprland.png" />

## 🚀 Philosophy

1.  **Home Row Focus:** Minimize hand movement by using `h j k l` for all window management and navigation.
2.  **Performance-Driven Apps:** Every tool in this stack—from **Ghostty** to **Yazi**—is chosen for its speed and low latency.
3.  **Organized Multitasking:** Use special workspaces (`slot1`, `slot2`, `slot3`) to keep persistent tools like notes, databases, or scratchpads just one keystroke away.
4.  **Dynamic Theming:** Switch between curated themes like `Rozejin`, `Gruvbox`, or `Nord` instantly to suit your environment.

## 🛠️ The Stack

*   **Terminal:** [Ghostty](https://ghostty.org/) (High-performance, GPU-accelerated)
*   **File Manager:** [Yazi](https://github.com/sxyazi/yazi) (Blazingly fast terminal-based file manager)
*   **Launcher / Clipboard:** Rofi + cliphist
*   **Browser:** Firefox (Optimized for keyboard use)

## ⌨️ Essential Keybindings

Your `Super` / `Mod` key is the primary modifier for all actions.

| Action | Keybinding |
| :--- | :--- |
| **Launch Terminal** | `Super + Enter` |
| **Launch File Manager** | `Super + E` |
| **App Launcher (Rofi)** | `Super + R` |
| **Clipboard History** | `Super + V` |
| **Kill Active Window** | `Super + Shift + C` |
| **Vim Focus Move** | `Super + h/j/k/l` |
| **Vim Window Move** | `Super + Shift + h/j/k/l` |
| **Toggle Floating** | `Super + Shift + Space` (Auto-centers and resizes) |
| **Special Scratchpads** | `Super + S` (Slot 1), `Super + A` (Slot 2), `Super + D` (Slot 3) |
| **Screenshots** | `Super + Shift + P` (Region) or `Super + P` (Full) |

## 🎨 Theming System

This setup features a dynamic theming system that applies configurations for Hyprland, Waybar, and wallpapers simultaneously.

**Available Themes:** `rozejin`, `gruvbox`, `nord`

### Applying a Theme:

```bash
# Apply a theme to Hyprland only
./scripts/apply-hypr-theme.sh rozejin

# Apply to Hyprland and Waybar together
./scripts/apply-desktop-theme.sh gruvbox
```

### Global Commands:

You can install global commands to switch themes from anywhere in your terminal:

```bash
./scripts/install-hypr-theme-command.sh
./scripts/install-desktop-theme-command.sh

# Usage:
hypr-theme nord
apply-desktop-theme rozejin
```

### Customization:

1. Copy an existing theme from `themes/` to a new directory.
2. Modify `style.conf`, `hyprlock.conf`, and `hyprpaper.conf` as needed.
3. Apply it using the scripts above.

## 🤝 Usage & Contributions

Feel free to fork this repository and adapt it to your needs. If you encounter any issues or have improvements to suggest, please open an issue or submit a pull request.

*Developed and maintained for a better Linux desktop experience.*