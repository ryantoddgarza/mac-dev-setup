## Homebrew

[Homebrew](https://brew.sh/) calls itself "the missing package manager for macOS" and is an essential tool for any developer.

### Installation

Before you can run Homebrew you need to have the Command Line Tools for Xcode installed. It includes compilers and other tools that will allow you to build things from source. See [previous section](#xcode).

To install Homebrew run the following in a terminal and follow the steps on the screen:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

To use brew you will need to start a new terminal session. After that you should make sure everything is working by running:

```
brew doctor
```

If everything is good, you should see no warnings, and a message that you are "ready to brew!".

