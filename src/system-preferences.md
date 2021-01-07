## System Preferences

### Initial Setup

The first thing you should do is update your OS to the latest version to have a more secure OS. To do that go: _Apple menu () > About This Mac > Software Update_.

### Users & Groups

- Enable _Show fast user switching menu_ and select desired display option.
- Set up Password, Apple ID, Picture, etc.

### Keyboard

Open _System Preferences > Keyboard_.

- Set _Key Repeat_ to _Fast_ and Delay Until Repeat to one notch below _Short_.
- Remap _CapsLock_ to _Esc_ for quicker Vim mode switching. Click the _Modifier Keys..._ button. In the dialog you can choose to map the caps lock key to escape.

#### Filco Majestouch

For keyboards not set up for macOS, swap the _Option_ and _Command_ keys. Open _System Preferences > Keyboard > Modifier Keys..._ and remap both keys.

### Trackpad

- Point & Click
  - Enable _Tap to click with one finger_
- Scroll & Zoom
  - Uncheck all except _Zoom in or out_ and _Scroll direction: Natural_
- More Gestures
  - Uncheck _Notification Center_

### Display

- Uncheck _Automatically adjust brightness_
- Uncheck _Show mirroring options in the menu bar when available_

### Dock

- Uncheck
  - _Double-click a window's title bar to_
  - _Animate opening applications_
  - _Show recent applications in Dock_
- Check
  - _Automatically hide and show the Dock_

Remove _workspace auto-switching_ by running:

```
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
killall Dock
```

### Mission Control

Prevent Spaces from rearranging.

Open _System Preferences > Mission Control_ and uncheck _Automatically rearrange spaces based on most recent use_.

### Spotlight

By default, Spotlight sends queries to Apple. Unless you want this feature, turn it off.

Open _System Preferences > Spotlight > Search Results_ and deselect _Spotlight Suggestions_.

### Accessibility

- _Display_ Check _Reduce transparency_

### Sound

- Disable _Play user interface sound effects_

### Finder

- General
  - Change New finder window show to open in your _Home Directory_
- Sidebar
  - Add Home and your Code Directory
  - Uncheck all Shared boxes
  - Uncheck _Tags_

### Menu Bar

- Remove the _Display_ and _Bluetooth_ icons
- Change battery to _Show percentage_

### Desktop

Right click on the _Desktop_ and select _Show view options_.

- Select _Sort by: Snap to Grid_
- Set _Icon Size_ to _48x48_
- Set _Label position_ to _Right_

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

