## Visual Studio Code

### Installation

To install the latest version, use Homebrew:

```
brew install --cask visual-studio-code
```

### Launching from the command line

You can also run VS Code from the terminal by typing 'code' after adding it to the path:

- Launch VS Code.
- Open the Command Palette and type 'shell command' to find the **Shell Command: Install 'code' command in PATH command**.
- Restart the terminal for the new $PATH value to take effect. You'll be able to type 'code .' in any folder to start editing files in that folder.

### Settings

- Editor: Font Size 13
- Editor: Tab Size 2
- Editor: Line Numbers Relative

### Estensions

#### Neo Vim

Neo Vim integration for Visual Studio Code. Requires Neovim version 0.4.2 or greater.

Install Neovim via Homebrew:

```
brew install neovim
```

- Install the Neo Vim extension via VSCode's _Extensions_ tab
- Set the path in the Neo Vim extension settings to `/usr/local/bin/nvim`
- Restart Visual Studio Code

##### Transitioning from Vim

[nvim-from-vim](https://neovim.io/doc/user/nvim.html#nvim-from-vim)

