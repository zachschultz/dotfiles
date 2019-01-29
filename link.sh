#!/bin/bash
dots_files="zshrc tmux.conf gitconfig"
# Note this structure is very important
# must be <APP_NAME>/<config_file>
config_files="nvim/init.vim"

dots_dir="${HOME}/.dotfiles"
config_dir="${HOME}/.config"
old_config_dir="${HOME}/config_old"
old_dots_dir="${HOME}/dotfiles_old"

# create dotfiles_old in homedir
echo -n "Creating $old_dots_dir for backup of any existing dotfiles in ~ ..."
mkdir -p $old_dots_dir
echo "done"
printf "\n"

# create config_old in homedir
echo -n "Creating $old_config_dir for backup of any existing dotfiles in $config_dir ..."
mkdir -p $old_config_dir
echo "done"
printf "\n"

# change to the dotfiles directory
echo -n "Changing to the $dots_dir directory ..."
cd $dots_dir
echo "done"
printf "\n"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $dots_files; do
  echo "Moving any existing dotfiles from ~ to $old_dots_dir"
  mv ~/.$file $old_dots_dir
  echo "Creating symlink to $file in home directory."
  ln -s $dots_dir/$file ~/.$file
  printf "\n"
done

# move existing config dotfiles to the config_old dir
# then symlink the newer config dotfiles
for file in $config_files; do
  IFS='/'
  read -ra arr <<< "$file"
  echo "Moving any existing dotfiles from $config_dir to $old_config_dir"
  # ensure a directory exists for this app's config
  mkdir -p "$old_config_dir/${arr[0]}"
  mv "$config_dir/$file" "$old_config_dir/$file"
  echo "Creating symlink to ${arr[1]} in $config_dir directory."
  ln -s "$dots_dir/${arr[1]}" "$config_dir/$file"
  IFS=' '
  printf "\n"
done

