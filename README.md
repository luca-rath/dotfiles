# Dotfiles

For more information about dotfiles, I wrote these articles on my blog:
* [Dotfiles: automating macOS system configuration](https://kalis.me/dotfiles-automating-macos-system-configuration/)
* [Increasing development productivity with repository management](https://kalis.me/increasing-development-productivity-repository-management/)
* [Set up a Hyper Key with Hammerspoon on macOS](https://kalis.me/setup-hyper-key-hammerspoon-macos/)

## Usage
1. Generate new SSH keys and add them to your GitHub account
    1. Alternatively, restore your safely backed up SSH keys to `~/.ssh/`
2. Install Homebrew and git
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  brew install git
  ```
3. Clone this repository
  ```bash
  git clone git@github.com:luca-rath/dotfiles.git
  ```
4. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
5. Login to applications, enter license keys, set preferences

## Customisation
I strongly encourage you to play around with the configurations, and add or remove features.
If you would like to use these dotfiles for yourself, I'd recommend changing at least the following:

#### Git
* The .gitconfig file includes my [user] config, replace these with your own user name and email

#### Packages
This folder is a collection of the programs and utilities I use frequently. These lists can easily be amended to your liking.

## Contents
### Root (/)
* bootstrap.sh - Calls all setup.sh scripts

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* imgcat - A utility to display images inline in iTerm 2
* sethidden - A shell script which takes command line arguments to show or hide hidden files
* togglehidden - A shell script that toggles between showing and hiding hidden files

### Duti (duti/)
* setup.sh - Sets the defaults set up in the different files
* app.package.id - Contains all extensions for the specified program

### Fish (fish/)
* setup.sh - Symlinks all fish files to their corresponding location in `~/.config/fish/`
* config.fish - Global fish configuration (.fishrc)
* fishfile - List of `fisher` plugins
* completions/
  * repo.fish - Contains all repos as completions for the `repo` command
  * repodir.fish - Contains all repos as completions for the `repodir` command
* functions/
  * abbrex.fish - Utility for expanding abbreviations in fish-scripts
  * clear.fish - Clears the screen and shows fish_greeting
  * emptytrash.fish - Empties trash and clears system logs
  * fish_greeting.fish - Fish greeting with fish logo
  * fish_prompt.fish - The Classic + Git prompt from the fish web config
  * fisher.fish - Fish plugin manager
  * forrepos.fish - Executes a passed command for all repos in `~/Projects`
  * ls.fish - Calling ls with parameter --color=auto
  * manp.fish - Open a man page in Preview
  * pubkey.fish - Copies the SSH public key to the clipboard
  * repo.fish - Finds a repository in `~/Projects` and jumps to it
  * repodir.fish - Finds a repository in `~/Projects` and prints its path
  * setup.fish - Initial setup for a new fish installation, contains abbreviations
  * update.fish - Installs OS X Software Updates, updates Ruby gems, Homebrew, npm, and their installed packages
  * week.fish - Returns the current week number

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and several compiled files
* .gitconfig - Sets several global Git variables

### macOS Preferences (macos/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing progress messages

### Vim (vim/)
* setup.sh - Symlinks all vim files to `~/`
* .vimrc - Basic Vim configuration

### Visual Studio Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* settings.json - Contains user settings for Visual Studio Code
