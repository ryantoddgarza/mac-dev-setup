## Node.js

[Node.js](https://nodejs.org/) is a JavaScript runtime built on Chrome's V8 JavaScript engine.

### Installation

Node.js can be installed in different ways. One very convenient way to install Node.js is through a package manager like Homebrew.

```sh
brew install node
```

Alternatively, Node version managers allow you to install and switch between multiple versions of Node.js and npm on your system so you can test your applications on multiple versions.

### Node Version Manager

[nvm](https://github.com/nvm-sh/nvm) is a version manager for node.js, designed to be installed per-user, and invoked per-shell.

#### Install

Install **Node Version Manager** with cURL.

```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.36.0/install.sh | bash
```
Verify installation:

```sh
command -v nvm
```
which should output ``nvm`` if the installation was successful.

#### Basic usage

```sh
nvm ls                          # List installed versions
nvm ls-remote                   # List versions available to be installed
nvm install node                # Install the latest stable version
nvm install <version>           # Install a specific version
nvm install --lts=<LTS name>    # Install from long term support versions
nvm use <version>               # Switch between versions
nvm alias default <version>     # Set default version with alias
```

### Troubleshooting

#### Fix the "Missing write access" error when using npm

*Pay attention to the folder listed by the error message. If it’s different, update the chown command accordingly.*

Run this command:

```sh
sudo chown -R $USER /usr/local/lib/node_modules
```

