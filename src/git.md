## Git

[Git](https://git-scm.com/) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.

[docs.github.com/en/github/using-git/getting-started](https://docs.github.com/en/github/using-git/getting-started-with-git-and-github)

Install Git:

```sh
brew install git
```

When done, to test that it installed properly you can run:

```sh
git --version
# or
which git
# should output `/usr/local/bin/git`
```

### Connect with GitHub over HTTPS

#### Set Git username for every local repository

In _~/.gitconfig_ set

```gitconfig
[user]
	name = username
	email = user@email.com
```

#### Create a personal accesss token

On [github.com](https://github.com/)

1. If you haven't already, [verify your email address](https://docs.github.com/en/github/getting-started-with-github/verifying-your-email-address)
2. Navigate to _Settings_ > _Developer settings_ > _Personal access tokens_.
3. Click _Generate a new token_.
4. Give your token a descriptive name.
5. Select the scopes, or permissions, you’d like to grant this token.
6. Click _Generate token_.
7. Copy the token to your clipboard. As a reminder, if you navigate off the page, you will not be able to see the token again.

Once you have a token, you can enter it instead of your password when performing Git operations over HTTPS. i.e. In the next step when chaching your Git credentials.

#### Cache Git credentials

Install the osxkeychain helper.

If you installed Git using Homebrew, the osxkeychain helper will already be installed.

1. Check if helper is installed. run: `git credential-osxkeychain`
2. If the helper isn't installed and you're running OS X version 10.9 or above, your computer will prompt you to download it.

In _~/.gitconfig_ set

```gitconfig
[credential]
	helper = osxkeychain
```

The next time you clone an HTTPS URL that requires authentication, Git will prompt for your username and password. When Git prompts for your password, enter your personal access token (PAT). Password-based authentication for Git is deprecated. Once you've authenticated successfully, your credentials are stored in the macOS keychain and will be used every time you clone an HTTPS URL.

If you are not prompted for your username and password, your credentials may already be cached on your computer. [Update your credentials](https://docs.github.com/en/github/using-git/updating-credentials-from-the-macos-keychain) in the Keychain to replace your old password with the token.

### Connect with GitHub over SSH

The instructions below are referenced from the [official documentation](https://help.github.com/articles/generating-ssh-keys).

#### Check for existing SSH keys

First, check for existing SSH keys by running:

```sh
ls -al ~/.ssh
# Lists the files in your .ssh directory, if they exist
```

Check the directory listing to see if you have files named either `id_rsa.pub` or `id_dsa.pub`. If you don't have either of those files then read on, otherwise skip the next section.

#### Generate a New SSH Key

If you don't have an SSH key you need to generate one. To do that you need to run the commands below, and make sure to substitute the placeholder with your email. The default settings are preferred, so when you're asked to "enter a file in which to save the key," press Enter to continue.

```sh
ssh-keygen -t rsa -C "your_email@example.com"
# Creates a new ssh key, using the provided email as a label
```

#### Add Your SSH Key to the ssh-agent

Run the following commands to add your SSH key to the `ssh-agent`.

```sh
eval "$(ssh-agent -s)"
```

If you're running macOS Sierra 10.12.2 or later, you will need to modify your `~/.ssh/config` file to automatically load keys into the ssh-agent and store passphrases in your keychain. If no file exists, create one and add:

```sshconfig
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa
```

No matter what operating system version you run you need to run this command to complete this step:

```sh
ssh-add -K ~/.ssh/id_rsa
```

#### Adding a new SSH key to your GitHub Account

The last step is to let GitHub know about your SSH key. Run this command to copy your key to your clipboard:

```sh
pbcopy < ~/.ssh/id_rsa.pub
```

Then go to GitHub and [input your new SSH key](https://github.com/settings/ssh/new). Paste your key in the "Key" textbox and pick a name that represents the computer you're currently using.

### Git Ignore (global)

Create the file `~/.gitignore`. Add files that are almost always ignored in all Git repositories or the contents of [macOS specific .gitignore](https://github.com/github/gitignore/blob/master/Global/macOS.gitignore) maintained by GitHub itself.

Set the excludesfile in _~/.gitconfig_

```gitconfig
[core]
	excludesfile = ~/.gitignore
```

### Git GUIs

They exist if you need them.

-   [Sourcetree](https://www.sourcetreeapp.com/)
-   [GitHub Desktop](https://desktop.github.com/)

