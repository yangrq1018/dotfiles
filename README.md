# My dotfiles

This repository holds the dotfiles (configuration files) for most apps I used
on Arch Linux, with a hyprland (wayland) tiling manager as GUI.

It's recommended to use `stow` to manage and install dotfiles.

To install a package,
```bash
stow --target=$HOME package
```

~To install all configurations at once~,
```bash
stow --target=$HOME */
```

> This way is deprecated. The repository now contains `systemd` service units,
> which should be installed to either `/etc/systemd/system/` or
> `~/.config/systemd/user/`, for `--system` and `--user` processes respectively.


To unlink a package,
``` bash
stow --target=$HOME --delete package
```

Note: instead of `*`, `*/` is used because the repo also contains a `README.md`
file, and we only want to install directories that are `packages` (like `tmux`)
in repo root.

## Ignore Lists
Like git, Stow has its way to ignore files from installing. Stow looks for `.stow-local-ignore`
and `.stow-global-ignore` files, for package-local and global settings. The ignore file's syntax
is similar to .gitignore file. If neither of these files exist, it uses a built-in default list,
which ignores `\.git` and `\.gitignore`, etc. You can safely place .gitignore inside a package,
it won't pollute your home directory.
