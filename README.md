# 🌿 Flix — dotfiles

A minimalist **Arch Linux** setup with **MangoWM** (Wayland), built to run light on modest hardware and designed for **backend** development.

Green theme, keyboard-driven, no unnecessary bloat.

![Desktop](assets/screenshots/01-desktop.png)

---

## ✨ Highlights

- **Seriously lightweight**: ~840 MiB of RAM at idle, ~10% CPU and ~43 °C on a Celeron with 4 GB of RAM.
- **Focus workflow**: a pomodoro timer in the bar and in its own TUI, with an agenda and a task list beside it.
- **Everything in the terminal**: editor, files, agenda, system monitoring.
- **Cohesive theme**: the wallpaper, bar, terminal and Neovim share the same green palette.

---

## 🧩 Stack

| Role | Tool |
| --- | --- |
| System | Arch Linux |
| Compositor / WM | [MangoWM](https://github.com/DreamMaoMao/mangowc) (Wayland) |
| Bar | Waybar |
| Terminal | foot |
| Shell | zsh |
| Launcher | fuzzel |
| Editor | Neovim |
| File manager | yazi |
| Browser | Helium |
| Agenda / tasks | calcurse |
| System monitor | htop |
| Screenshots | slurp |
| Notifications | mako |
| Extras | scrcpy, LocalSend |

---

## 🖥️ Hardware

This is my actual daily hardware, proof that you can have a beautiful, fast desktop without spending much.

| | |
| --- | --- |
| Machine | Acer Aspire XC-830 |
| CPU | Intel Celeron J4025 (2 cores @ 2.90 GHz) |
| GPU | Intel UHD Graphics 600 (integrated) |
| RAM | 4 GB |

---

## 📸 Screenshots

### Neovim
Startup dashboard, and the editor side by side with the terminal.

| Neovim | Editor + terminal |
| --- | --- |
| ![Neovim](assets/screenshots/02-neovim-dashboard.png) | ![Neovim editor](assets/screenshots/03-neovim-editor.png) |

### Launcher and monitoring

| fuzzel | htop |
| --- | --- |
| ![fuzzel](assets/screenshots/04-fuzzel.png) | ![htop](assets/screenshots/05-htop.png) |

### Focus and productivity
Pomodoro, agenda, calendar and TODO in a single workspace.

![Pomodoro and agenda](assets/screenshots/06-pomodoro-calcurse.png)

### Browser

![Helium](assets/screenshots/07-helium.png)

---

## 📁 Structure

```
.
├── mango/        # MangoWM config
├── waybar/       # bar and styles
├── foot/         # terminal
├── fuzzel/       # launcher
├── nvim/         # Neovim
├── yazi/         # file manager
├── zsh/          # shell
└── assets/
    └── screenshots/
```

---

## 🚀 Installation

### 1. Dependencies

Packages from the official repositories:

```bash
sudo pacman -S foot waybar fuzzel yazi neovim zsh htop calcurse slurp
```

AUR packages (with your preferred helper): **MangoWM**, **Helium** and **LocalSend**.

### 2. Clone the repository

```bash
git clone https://github.com/<your-username>/<your-repo>.git ~/dotfiles
cd ~/dotfiles
```

### 3. Link the configs

Use symlinks (by hand or with [GNU Stow](https://www.gnu.org/software/stow/)):

```bash
ln -s ~/dotfiles/waybar ~/.config/waybar
ln -s ~/dotfiles/foot   ~/.config/foot
# repeat for the remaining folders
```

If you already have configs with the same names, back them up first.

### 4. Launch

Log out and start **MangoWM** from the TTY or your display manager.

---

## 🎯 Notes

- The config is designed for **low-end hardware**: no heavy animations and no unnecessary background services.
- Tested on the built-in display and on an external monitor over VGA.
- If something doesn't work on your machine, open an issue.

---

## 👤 Author

**Helder Maneco ("Flix")** — Backend Developer, Luanda 🇦🇴

---

## 📄 License

MIT — use it, adapt it and share it freely.
