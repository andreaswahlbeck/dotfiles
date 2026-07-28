# Dotfiles

Setup for a new Mac.

## Setup

1. Install homebrew: https://brew.sh/ (also installs Xcode Command Line Tools, which includes git)
2. Clone this repo:
   ```sh
   git clone https://github.com/andreaswahlbeck/dotfiles.git ~/dotfiles
   ```
3. Run the install script:
   ```sh
   cd ~/dotfiles
   ./install.sh            # work machine (gitconfig.bn)
   ./install.sh --personal # personal machine (gitconfig.mm)
   ```
   This symlinks zsh, bash, git and VS Code config into place and clones
   the zsh theme (spaceship-prompt) and plugins.
4. Install everything from the [Brewfile](./Brewfile) (formulas, casks and
   VS Code extensions):
   ```sh
   brew bundle install --file ~/dotfiles/Brewfile
   ```
5. Run `./macos` to set macOS defaults.
6. Restart the terminal.

## Updating the Brewfile

```sh
brew bundle dump --file ~/dotfiles/Brewfile --force
```

## Notes

- zsh is the default shell; the bash files are kept for scripts and as a
  fallback.
- VS Code settings live in [vscode/settings.json](./vscode/settings.json)
  and are symlinked into `~/Library/Application Support/Code/User/`.
  Extensions are installed via the Brewfile.
- `install.sh` is idempotent — safe to re-run after pulling changes.
- `install.sh` also works on Linux (VS Code settings go to `~/.config/Code/User`).
  Skip the Brewfile and `./macos` there — install packages via the distro's
  package manager instead.

## Printer

Download and install printer driver https://support.brother.com/g/b/downloadtop.aspx?c=as_ot&lang=en&prod=dcp1610w_eu_as
