# My Dotfiles Repo

This is a repository for my personal dotfiles, managed using a bare Git repository. It contains configuration files for various tools and environments across different machines.

## What is a Bare Repo?
This is a **bare Git repository**, meaning it doesn't have a working directory where you can directly edit files. Instead, it is used to store the history and configuration for my dotfiles. The actual files are managed in a separate directory (e.g., `~/.config`, `~/.bashrc`, etc.) that is symlinked to this repository.

## How to Use

To set up your system with these dotfiles, run the following commands:

```bash
# Clone the bare repository to your home directory
git clone --bare https://github.com/your-username/dotfiles.git $HOME/.dotfiles

# Create a config alias (optional but recommended)
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Check out the dotfiles from the repo
config checkout

# If there are any conflicts, resolve them manually and then commit
config status

# You can now use 'config' to manage your dotfiles
