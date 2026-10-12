# Neovim Controls

Simple keyboard reference for this Neovim setup.

### Leader key: "Space"

---

## Files

Key| Action
"Space + W"| Save
"Space + Z"| Save and quit
"Space + X"| Quit
":q!"| Quit without saving

---

## File Explorer

The file explorer is on the left.

Key| Action
"Space + E"| Focus the explorer
"Enter"| Open selected file
"m"| Open file operations menu
"m" → "a"| Create file/folder
"m" → "d"| Delete
"m" → "m"| Rename/move
"m" → "c"| Copy

When creating a folder, use a name ending with "/".

Example:

src/

---

## Moving Between Panes

Use:

Ctrl + H    Left
Ctrl + J    Down
Ctrl + K    Up
Ctrl + L    Right

These work for the explorer, editor and other split windows.

---

## Splits

Key| Action
"Space + V"| Vertical split
"Space + S"| Horizontal split
"Space + ←"| Make vertical split smaller
"Space + →"| Make vertical split larger
"Space + ↑"| Make horizontal split larger
"Space + ↓"| Make horizontal split smaller

---

## Buffers

Key| Action
"Tab"| Next buffer
"Shift + Tab"| Previous buffer
"Space + D"| Close current buffer

---

## Search

Use "/" to search.

/text

Then:

Key| Action
"n"| Next result
"N"| Previous result
"Space + H"| Clear search highlight

---

## Scrolling

Key| Action
"Ctrl + D"| Scroll down
"Ctrl + U"| Scroll up

The cursor stays roughly centered while searching and scrolling.

---

## Terminal

Open a terminal with:

Space + T

Leave terminal mode with:

Esc

You can then use "Ctrl + H/J/K/L" to move between panes.

---

## Completion

While typing:

Tab

moves through completion suggestions.

Shift + Tab

moves backwards.

---

## Clipboard

Windows clipboard shortcuts:

Ctrl + C    Copy
Ctrl + V    Paste

Neovim also supports its normal Vim yank/paste commands.

---

## Basic Vim Movement

You don't need to learn everything at once.

Start with:

h    left
j    down
k    up
l    right

And:

i    Insert mode
Esc  Normal mode
:w   Save
:q   Quit

The important idea is:

Normal mode = navigate and control Neovim

Insert mode = type code

---

## Quick Cheat Sheet

Space + W       Save
Space + Z       Save + quit
Space + X       Quit
Space + E       Explorer

Ctrl + H/J/K/L  Move between panes

Space + V       Vertical split
Space + S       Horizontal split

Tab             Next buffer
Shift + Tab     Previous buffer
Space + D       Close buffer

Space + T       Terminal

/               Search
n / N           Next / previous result
Space + H       Clear search

Ctrl + C        Copy
Ctrl + V        Paste

Esc             Leave insert/terminal mode

That's enough to get started. You can learn the rest of Vim naturally as you use it.