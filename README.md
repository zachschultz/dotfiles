# @zachschultz' dotfiles

Using [stow](https://www.gnu.org/software/stow/) to manage dotfiles.

Example usage:

```
stow --verbose=2 zsh
```

This will symlink everything in `zsh/` to the `$HOME` directory, i.e. `zsh/.zshrc` -> `$HOME/.zshrc`.

