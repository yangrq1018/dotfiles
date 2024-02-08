# My dotfiles

This repository holds the dotfiles (configuration files) for most apps I used
on Arch Linux, with a hyprland (wayland) tiling manager as GUI.

It's recommended to use `stow` to manage and install dotfiles.
To install all configuration, use

```bash
stow --target=$HOME */
```

To delete all configurations, use

``` bash
stow --target=$HOME --delete */
```

where `*/` rather than `*` is used because the repo also contains a `README.md`
file, and we only want to install directories that are `packages` (like `tmux`)
in repo root.
