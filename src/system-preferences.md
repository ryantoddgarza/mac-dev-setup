## System Preferences

### Initial Setup

The first thing you should do is update your OS to the latest version to have a more secure OS. To do that go: *Apple menu () > About This Mac > Software Update*.

### Users & Groups

- Enable *Show fast user switching menu* and select desired display option.
- Set up Password, Apple ID, Picture, etc.

### Keyboard

Open *System Preferences > Keyboard*.

- Set *Key Repeat* to *Fast* and Delay Until Repeat to one notch below *Short*.
- Remap *CapsLock* to *Esc* for quicker Vim mode switching. Click the *Modifier Keys...* button. In the dialog you can choose to map the caps lock key to escape.

#### Filco Majestouch

For keyboards not set up for macOS, swap the *Option* and *Command* keys. Open *System Preferences > Keyboard > Modifier Keys...* and remap both keys.

### Trackpad

- Point & Click
    - Enable *Tap to click with one finger*
- Scroll & Zoom
    - Uncheck all except *Zoom in or out* and *Scroll direction: Natural*
- More Gestures
    - Uncheck *Notification Center*

### Display

- Uncheck *Automatically adjust brightness*
- Uncheck *Show mirroring options in the menu bar when available*

### Dock

- Uncheck
    - *Double-click a window's title bar to*
    - *Animate opening applications*
    - *Show recent applications in Dock*
- Check
    - *Automatically hide and show the Dock*

Remove *workspace auto-switching* by running:

```
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock
```

### Mission Control

Prevent Spaces from rearranging.

Open *System Preferences > Mission Control* and uncheck *Automatically rearrange spaces based on most recent use*.

### Spotlight

By default, Spotlight sends queries to Apple. Unless you want this feature, turn it off.

Open *System Preferences > Spotlight > Search Results* and deselect *Spotlight Suggestions*.

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

Mac OS X Lion introduced a new, iOS-like context menu when you press and hold a key that enables you to choose a character from a menu of options. You can disable this feature globally by issuing the following command in your terminal:

```
defaults write -g ApplePressAndHoldEnabled -bool false
```

#### Change the default location for screenshots

Create the new desired directory if it does not already exist. Then in the terminal run:

```
defaults write com.apple.screencapture location /path/to/screenshots/ && killall SystemUIServer
```

