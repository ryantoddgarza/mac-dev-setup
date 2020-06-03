# macOS Developer Environment Setup

## Table of Contents

  - [Introduction](#macos-developer-environment-setup)
  - [System Preferences](#system-preferences)
  - [Xcode](#xcode)
  - [Homebrew](#homebrew)
  - [Terminal](#terminal)
      - [iTerm2](#iterm2)
      - [Zsh](#zsh)
      - [Oh My Zsh](#oh-my-zsh)
      - [Tmux](#tmux)
      - [rsync](#rsync)
  - [Git](#git)
      - [SSH Config for GitHub](#ssh-config-for-github)
      - [Git Ignore (global](#git-ignore-global)
      - [Git GUIs](#git-guis)
  - [Vim](#vim)
      - [Plugins](#plugins)
  - [Node.js](#nodejs)
  - [Browsersync](#browsersync)
  - [SASS](#sass)
  - [Local React Environment](#local-react-environment)
  - [Apps](#apps)
  - [References](#references)

## System Preferences

### Initial Setup

The first thing you should do is update your OS to the latest version to
have a more secure OS. To do that go: *Apple menu () \> About This Mac
\> Software Update*.

### Users & Groups

  - Enable *Show fast user switching menu* and select desired display
    option.
  - Set up Password, Apple ID, Picture, etc.

### Keyboard

Open *System Preferences \> Keyboard*.

  - Set *Key Repeat* to *Fast* and Delay Until Repeat to one notch below
    *Short*.
  - Remap *CapsLock* to *Esc* for quicker Vim mode switching. Click the
    *Modifier Keys…* button. In the dialog you can choose to map the
    caps lock key to escape.

#### Filco Majestouch

For keyboards not set up for macOS, swap the *Option* and *Command*
keys. Open *System Preferences \> Keyboard \> Modifier Keys…* and remap
both keys.

### Trackpad

  - Point & Click
      - Enable *Tap to click with one finger*
  - Scroll & Zoom
      - Uncheck all except *Zoom in or out* and *Scroll direction:
        Natural*
  - More Gestures
      - Uncheck *Notification Center*

### Display

  - Uncheck *Automatically adjust brightness*
  - Uncheck *Show mirroring options in the menu bar when available*

### Dock

  - Uncheck
      - *Double-click a window’s title bar to*
      - *Animate opening applications*
      - *Show recent applications in Dock*
  - Check
      - *Automatically hide and show the Dock*

### Accessibility

  - *Display* Check *Reduce transparency*

### Sound

  - Disable *Play user interface sound effects*

### Finder

  - General
      - Change New finder window show to open in your *Home Directory*
  - Sidebar
      - Add Home and your Code Directory
      - Uncheck all Shared boxes
      - Uncheck *Tags*

### Menu Bar

  - Remove the *Display* and *Bluetooth* icons
  - Change battery to *Show percentage*

### Desktop

Right click on the *Desktop* and select *Show view options*.

  - Select *Sort by: Snap to Grid*
  - Set *Icon Size* to *48x48*
  - Set *Label position* to *Right*

### User Defaults

#### Enable key repeat in OS X

Mac OS X Lion introduced a new, iOS-like context menu when you press and
hold a key that enables you to choose a character from a menu of
options. You can disable this feature globally by issuing the following
command in your terminal:

    defaults write -g ApplePressAndHoldEnabled -bool false

#### Change the default location for screenshots

Create the new desired directory if it does not already exist. Then in
the terminal run:

    defaults write com.apple.screencapture location /path/to/screenshots/ && killall SystemUIServer

## Xcode

[Xcode](https://developer.apple.com/xcode/) is an integrated development
environment for macOS containing a suite of software development tools
developed by Apple for developing software for macOS, iOS, watchOS and
tvOS.

To install Xcode command line tools run:

    xcode-select --install

It will prompt you to install the command line tools. Follow the
instructions and you’ll have Xcode and Xcode command line tools both
installed.

## Homebrew

[Homebrew](https://brew.sh/) calls itself “the missing package manager
for macOS” and is an essential tool for any developer.

### Installation

Before you can run Homebrew you need to have the Command Line Tools for
Xcode installed. It includes compilers and other tools that will allow
you to build things from source. See [previous section](#xcode).

To install Homebrew run the following in a terminal and follow the steps
on the screen:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

To use brew you will need to start a new terminal session. After that
you should make sure everything is working by running:

    brew doctor

If everything is good, you should see no warnings, and a message that
you are “ready to brew\!”.

## Terminal

### iTerm2

[iTerm2](https://www.iterm2.com/) is an open source replacement for
Apple’s Terminal. It’s highly customizable and comes with a lot of
useful features.

#### Installation

Use Homebrew to download and install:

    brew cask install iterm2

#### Fonts

To enable italics rendering, run:

    { infocmp -1 xterm-256color ; echo "\tsitm=\\E[3m,\n\tritm=\\E[23m,"; } > /tmp/xterm-256color.terminfo
    tic /tmp/xterm-256color.terminfo

Install preferred font:

    brew tap homebrew/cask-fonts && brew cask install font-fira-code
    brew tap homebrew/cask-fonts && brew cask install font-meslo-lg
    brew tap homebrew/cask-fonts && brew cask install font-source-code-pro

Set the font in iTerm2’s preferences and change the size to 13pt.

#### Color Theme

Download `Tender.itermcolors` from
[github.com/tombell/tender-iterm2](https://github.com/tombell/tender-iterm2).
Go to *Preferences \> Profiles \> Colors* and select *Import…* from the
*Color Presets…* dropdown. Import the theme and select it from the
*Color Presets…* dropdown.

### Zsh

The Z shell (also known as zsh) is a Unix shell that is built on top of
bash (the default shell for macOS) with additional features. It’s
recommended to use zsh over bash. It’s also highly recommended to
install a framework with zsh as it makes dealing with configuration,
plugins and themes a lot nicer.

Install zsh using Homebrew:

    brew install zsh

The configuration file for zsh is called .zshrc and lives in your home
folder (\~/.zshrc).

### Oh My Zsh

[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) is an open
source, community-driven framework for managing your zsh configuration.
It comes with a bunch of features out of the box and improves your
terminal experience.

Install Oh My Zsh:

    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

To apply any configuration changes you make you need to either start new
shell instance or run:

    source ~/.zshrc

#### Fix Folder permission “Insecure completion-dependent directories detected”

Add `ZSH_DISABLE_COMPFIX=true` to the top of your .zshrc file. Reload
the file by running `source .zshrc`.

### Tmux

[Tmux](https://github.com/tmux/tmux/wiki) is a terminal multiplexer: it
enables a number of terminals to be created, accessed, and controlled
from a single screen. tmux may be detached from a screen and continue
running in the background, then later reattached.

#### Installation

Install tmux via Homebrew:

    brew install tmux

#### Tmux config

Clone the .tmux.conf file from
[github.com/ryantoddgarza/dev/tree/master/dotfiles](https://github.com/ryantoddgarza/dev/tree/master/dotfiles)
into the home directory.

### Rsync

Rsync is a fast and extraordinarily versatile file copying tool. It can
copy locally, to/from another host over any remote shell, or to/from a
remote rsync daemon. It offers a large number of options that control
every aspect of its behavior and permit very flexible specification of
the set of files to be copied. It is famous for its delta-transfer
algorithm, which reduces the amount of data sent over the network by
sending only the differences between the source files and the existing
files in the destination. Rsync is widely used for backups and mirroring
and as an improved copy command for everyday use.

#### Update rsync With Homebrew

Install the latest version via Homebrew:

    brew install rsync

Check version

    rsync --version

#### Basic Usage

The basic syntax is:

    rsync <options> <source> <destination>

#### Usage - Mirror Directory

    rsync -acXNv --delete <source> <destination>

The options used are:

  - `-a`, `--archive` archive mode; equals `-rlptgoD (no -H,-A,-X)`
  - `-c`, `--checksum` skip based on checksum, not mod-time & size
  - `-X`, `--xattrs` preserve extended attributes
  - `-N`, `--crtimes` preserve create times (newness)
  - `-v`, `--verbose` increase verbosity

#### Documentation

  - [rsync Manual](https://www.manpagez.com/man/1/rsync/)

## Git

[Git](https://git-scm.com/) is a free and open source distributed
version control system designed to handle everything from small to very
large projects with speed and efficiency.

Install Git:

    brew install git

When done, to test that it installed properly you can run:

    git --version

And `which git` should output `/usr/local/bin/git`.

Next, we’ll define your Git user (should be the same name and email you
use for [GitHub](https://github.com/):

    git config --global user.name "Your Name Here"
    git config --global user.email "your_email@youremail.com"

They will get added to your `.gitconfig` file.

To push code to your GitHub repositories, we’re going to use the
recommended HTTPS method (versus SSH). To prevent git from asking for
your username and password every time you push a commit you can cache
your credentials by running the following command, as described in the
[instructions](https://help.github.com/articles/caching-your-github-password-in-git/).

    git config --global credential.helper osxkeychain

### SSH Config for GitHub

The instructions below are referenced from the [official
documentation](https://help.github.com/articles/generating-ssh-keys).

#### Check for existing SSH keys

First, we need to check for existing SSH keys by running:

    ls -al ~/.ssh
    # Lists the files in your .ssh directory, if they exist

Check the directory listing to see if you have files named either
`id_rsa.pub` or `id_dsa.pub`. If you don’t have either of those files
then read on, otherwise skip the next section.

#### Generate a New SSH Key

If you don’t have an SSH key you need to generate one. To do that you
need to run the commands below, and make sure to substitute the
placeholder with your email. The default settings are preferred, so when
you’re asked to “enter a file in which to save the key,” just press
Enter to continue.

    ssh-keygen -t rsa -C "your_email@example.com"
    # Creates a new ssh key, using the provided email as a label

#### Add Your SSH Key to the ssh-agent

Run the following commands to add your SSH key to the `ssh-agent`.

    eval "$(ssh-agent -s)"

If you’re running macOS Sierra 10.12.2 or later, you will need to modify
your `~/.ssh/config` file to automatically load keys into the ssh-agent
and store passphrases in your keychain. If no file exists, create one
and add:

    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_rsa

No matter what operating system version you run you need to run this
command to complete this step:

    ssh-add -K ~/.ssh/id_rsa

#### Adding a new SSH key to your GitHub Account

The last step is to let GitHub know about your SSH key. Run this command
to copy your key to your clipboard:

    pbcopy < ~/.ssh/id_rsa.pub

Then go to GitHub and [input your new SSH
key](https://github.com/settings/ssh/new). Paste your key in the “Key”
textbox and pick a name that represents the computer you’re currently
using.

### Git Ignore (global)

Create the file `~/.gitignore`. Add files that are almost always ignored
in all Git repositories or the contents of [macOS specific
.gitignore](https://github.com/github/gitignore/blob/master/Global/macOS.gitignore)
maintained by GitHub itself.

followed by running the command below, in terminal:

    git config --global core.excludesfile ~/.gitignore

### Git GUIs

I don’t use them but they exist.

  - [Sourcetree](https://www.sourcetreeapp.com/)
  - [GitHub Desktop](https://desktop.github.com/)

## Vim

[Vim](https://www.vim.org/) is a highly configurable text editor built
to make creating and changing any kind of text very efficient. It is
included as “vi” with most UNIX systems and with Apple macOS.

### Installation

To install the latest version, use Homebrew:

    brew install vim

### Vim config

Clone the approprite .vim files from
[github.com/ryantoddgarza/dev/tree/master/dotfiles](https://github.com/ryantoddgarza/dev/tree/master/dotfiles)
into the home directory.

### The Ultimate vimrc

*This is a temporary recommendation until a solid *.vimrc\* is built
up.\*

[The Ultimate vimrc](https://github.com/amix/vimrc) is a collection of
vimrc configurations to make easy the usage of vim.

To download the The Ultimate vimrc, you need to install the git client.
If you need install it, see the [Git section](#git).

Download the vimrc files:

    git clone https://github.com/amix/vimrc.git ~/.vim_runtime

To install the complete version, run:

    sh ~/.vim_runtime/install_awesome_vimrc.sh

To install the basic version, run:

    sh ~/.vim_runtime/install_basic_vimrc.sh

To update the vimrc scripts, run:

    cd ~/.vim_runtime && git pull --rebase && cd -

#### My Configs

After you have installed the setup, you can create
`~/.vim_runtime/my_configs.vim` to fill in any extra configurations.

### Color Scheme

Download `monokai.vim` from
[github.com/crusoexia/vim-monokai](https://github.com/crusoexia/vim-monokai)
and add it to the `~/.vim/colors` directory. If not already in the
`.vimrc` file, add `colorscheme monokai`.

More useful color schemes at
[github.com/rafi/awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes).

### Plugins

  - [vim-airline](https://github.com/vim-airline/vim-airline): Lean &
    mean status/tabline for vim that’s light as air.
  - [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes):
    A collection of themes for vim-airline.
  - [Auto Pairs](https://github.com/jiangmiao/auto-pairs): Insert or
    delete brackets, parens, quotes in pair.
  - [commentary.vim](https://github.com/tpope/vim-commentary): Comment
    stuff out.
  - [surround.vim](https://github.com/tpope/vim-surround):
    Quoting/parenthesizing made simple.
  - [vinegar.vim](https://github.com/tpope/vim-vinegar): Combine with
    netrw to create a delicious salad dressing.
  - [Emmet-vim](https://github.com/mattn/emmet-vim): emmet-vim is a vim
    plug-in which provides support for expanding abbreviations similar
    to emmet.
  - [Vim-Prettier](https://github.com/prettier/vim-prettier): A vim
    plugin wrapper for prettier, pre-configured with custom default
    prettier settings.

## Node.js

Node.js is a JavaScript runtime built on Chrome’s V8 JavaScript engine.

### Node Version Manager

nvm is a version manager for node.js, designed to be installed per-user,
and invoked per-shell.

Install **Node Version Manager** with cURL.

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.35.2/install.sh | bash

Verify installation:

    command -v nvm

which should output `nvm` if the installation was successful.

### Listing Versions

To see what versions are installed:

    nvm ls

To see what versions are available to be installed:

    nvm ls-remote

### Install Node.js Version

To download, compile, and install the latest release of node, run:

    nvm install node # "node" is an alias for the latest version

To install a specific version of node:

    nvm install 12.6.3 # replace with desired version

Node has a schedule for long-term support (LTS). Installation supports
LTS arguments.

    nvm install --lts=Erbium

### Using Versions

Switching between versions

    nvm use 12.16.X

### Set Default Version

    nvm alias default 12.6.3 # replace with desired version

### Troubleshooting

### Fix the “Missing write access” error when using npm

*Pay attention to the folder listed by the error message. If it’s
different, update the chown command accordingly.*

Run this command:

    sudo chown -R $USER /usr/local/lib/node_modules

## Browsersync

[browsersync.io](https://www.browsersync.io/) Synchronized browser
testing.

Install and run browser-sync inside of the project folder. Requires
`node.js`. Refer to the [Node.js section](#nodejs). Install
`browser-sync` globally:

    npm install -g browser-sync

After installing `browser-sync` we can run it inside any folder in our
system and it will create a local server (automatically displaying the
default index.html file you have in the folder).

    browser-sync start --server --files .
    
    # abbreviated options are as follows
    browser-sync start -sf .

## SASS

[Sass](https://sass-lang.com/) is a stylesheet language that’s compiled
to CSS. It allows you to use variables, nested rules, mixins, functions,
and more, all with a fully CSS-compatible syntax. Sass helps keep large
stylesheets well-organized and makes it easy to share design within and
across projects.

Install with Homebrew:

    brew install sass/sass/sass

## Apps

A list of apps that are generally good to use and can come in handy in
day to day tasks.

### Developer Tools

  - [Google Chrome](https://www.google.com/intl/en/chrome/browser/) is a
    developer friendly browser with powerful development tools built in
    to it.

Install with Homebrew:

    brew cask install google-chrome

### Productivity

  - [Dropbox](https://www.dropbox.com/) File syncing to the cloud. It
    syncs files across all devices (laptop, mobile, tablet), and serves
    as a backup.
  - [Pandoc](https://pandoc.org/) a universal document converter.

## References

Inspiration for this document.

  - [sourabhbajaj.com/mac-setup/](https://sourabhbajaj.com/mac-setup/)
  - [github.com/nicolashery/mac-dev-setup](https://github.com/nicolashery/mac-dev-setup)
  - [stuartellis.name/articles/mac-setup](https://www.stuartellis.name/articles/mac-setup/)
  - [michaeluloth.com/how-to-set-up-a-mac-for-web-development](https://www.michaeluloth.com/how-to-set-up-a-mac-for-web-development)
  - [mallinson.ca/posts/5/the-perfect-web-development-environment-for-your-new-mac](https://mallinson.ca/posts/5/the-perfect-web-development-environment-for-your-new-mac)
