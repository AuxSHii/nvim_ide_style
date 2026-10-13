# Neovim Windows IDE
A simple, beginner-friendly Neovim configuration that makes Neovim more like a lightweight IDE on Windows.

<img width="1366" height="768" alt="nvim" src="https://github.com/user-attachments/assets/68920b1e-19dc-42d5-9ece-c202c5e18d68" />


it includes a file explorer, code completion, syntax highlighting, terminal, split navigation, useful shortcuts and a clean interface.

The configuration is designed for Neovim 0.5.1 on Windows x86 (32-bit) and is especially suitable for older or low-resource computers.

## Features
NERDTree file explorer
Auto-Save (added)
Syntax highlighting
Code completion
Built-in terminal
Line numbers
Relative line numbers
Automatic indentation
Gruvbox colorscheme
Lightline status bar
Auto-pairs
IDE-style splits
Easy pane navigation
Windows clipboard shortcuts
Simple save and quit shortcuts
File and folder management from the explorer
Lightweight configuration
Requirements
Windows
Neovim 0.5.1
vim-plug
Internet connection for the first plugin installation
This configuration was made for Neovim 0.5.1 x86.
Newer Neovim versions may require changes to the configuration or plugins.

## Installation
1. Install Neovim
Install Neovim for Windows.
For this configuration, use:
```
Neovim 0.5.1
Windows x86 / 32-bit
```
Make sure nvim.exe is available from your terminal.
Check:
```
nvim --version
```
You should see:
```
NVIM v0.5.1
```
2. Create the Neovim configuration directory
Open File Explorer and go to:
```
%LOCALAPPDATA%
```
Create a folder named:
```
nvim
```
The configuration file will be:
```
%LOCALAPPDATA%\nvim\init.vim
```
3. Install vim-plug
Create the following directory if it does not already exist:
```
%LOCALAPPDATA%\nvim\autoload
```
Download plug.vim and place it here:
```
%LOCALAPPDATA%\nvim\autoload\plug.vim
```
4. Install this configuration
Download or clone this repository.
Copy:
```
init.vim
```
to:
```
%LOCALAPPDATA%\nvim\init.vim
```
If you already have an init.vim, back it up first.
For example:
```
init.vim.backup
```
5. Install the plugins
Start Neovim:
```
nvim
```
Inside Neovim run:
```
:PlugInstall
```
Wait for the installation to finish.
Then close Neovim:
```
:q
```
Start it again:
```
nvim
```
The IDE configuration should now be active.

## First Start
Open a project directory from Command Prompt:
```
cd C:\path\to\your\project
nvim
```
You should see the file explorer on the left and your editing area on the right.
The explorer can be used to:
Open files
Create files
Create folders
Delete files/folders
Rename or move files
Copy files
See CONTROLS.md (http://CONTROLS.md/) for the keyboard shortcuts.

## Configuration Location
Neovim reads the configuration from:
```
%LOCALAPPDATA%\nvim\init.vim
```
Plugins are installed into:
```
%LOCALAPPDATA%\nvim-data\plugged
```
You can edit the configuration directly from Neovim:
```
:e %LOCALAPPDATA%\nvim\init.vim
```
Or open it from Command Prompt:
```
nvim %LOCALAPPDATA%\nvim\init.vim
```
### Clipboard
The configuration includes Windows-style clipboard shortcuts.
Check whether Neovim has clipboard support:
:echo has('clipboard')
If it returns:
1
clipboard support is available.

## Why This Configuration?
Neovim is extremely powerful, but a completely empty Neovim installation can be intimidating for beginners.
This configuration tries to provide a familiar starting point:
┌──────────────────┬──────────────────────────────┐
│                  │                              │
│   FILE EXPLORER  │            CODE              │
│                  │                              │
│   project/       │            main.c            │
│   src/           │                              │
│   README.md      │                              │
│                  │                              │
└──────────────────┴──────────────────────────────┘
The goal is not to turn Neovim into a huge IDE with hundreds of plugins.
The goal is to provide a small, understandable and usable IDE-style environment that you can learn and customize yourself.

## Controls
See:
controls.md 
It contains the complete keyboard shortcut and file-explorer reference.

## Customization
The entire configuration is contained in:
init.vim
You can change:
Colorscheme
Keybindings
Explorer size
Indentation
Completion behavior
Terminal behavior
Editor options
Plugins
The configuration is intentionally kept in one file so beginners can read and understand it.

License
MIT License.
