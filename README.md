# My Neovim Installtion & Keystrokes

## ⚙️ Installation & Requirements

To get started with LazyVim, please ensure you complete the following steps:

1.  **Requirements:** Review the prerequisites for installation on the official LazyVim site:
    [LazyVim Requirements](https://www.lazyvim.org/#%EF%B8%8F-requirements)
2.  **Installation:** Follow the detailed steps in the official guide to install LazyVim:
    [LazyVim Installation Guide](https://www.lazyvim.org/installation)

> **Note:** Feel free to clone and use my custom settings from the repository!

***

## Resources & Inspiration

* **Effective Neovim setup for web development towards 2024** by *devaslife*
    [https://youtu.be/fFHlfbKVi30?si=ekaZArAaEdTM8xoh]
* **Effective NeoVim Setup for Full-Stack Web Development in 2024** by *Sindo*
    [https://youtu.be/V070Zmvx9AM?si=JGWbxm1TVQgaBfTf]

What got me dive and break my head setting this up and getting used to:
*  [**ThePrimeagen**](https://github.com/theprimeagen) --- -- (jjkkjjkk)

## Normal Mode

* **Leader Key:** The `<leader>` key is the **Spacebar**.
* **Vim Grammar:** Many commands follow a `[verb] + [noun]` grammar.
    * **Verbs (Operators):** `d` (delete), `c` (change), `y` (yank/copy), `gc` (comment)
    * **Nouns (Motions / Text Objects):** `w` (word), `$` (end of line), `iw` (inner word)

## 1. Essential Navigation

### File Navigation (Start/End of File)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `gg` | Go to the **start** of the file. |
| `G` (Shift+g) | Go to the **end** of the file. |
| `10G` | Go to a specific line (e.g., line 10). |

### Line Navigation (Start/End of Line)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `0` (zero) | Go to the **absolute start** of the line. |
| `^` (caret) | Go to the **first non-whitespace character** (more useful). |
| `$` (dollar) | Go to the **end** of the line. |

## 2. Editing Text

### Deleting Text

| Keystroke(s) | What It Does |
| :--- | :--- |
| `dd` | **Delete** the entire current line. |
| `dw` | **Delete** from the cursor to the start of the next **word**. |
| `diw` | **Delete** the **inner word** your cursor is on (very useful). |
| `daw` | **Delete a word** (including one space around it). |
| `D` (Shift+d) | **Delete** from the cursor to the **end of the line**. |
| `x` | **Delete** the single character under the cursor. |

### Changing Text (Delete + Enter Insert Mode)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `cc` | **Change** (delete and replace) the entire current line. |
| `ciw` | **Change inner word** (a *must-know* command). |
| `caw` | **Change a word** (deletes word and a space). |
| `C` (Shift+c) | **Change** (delete and replace) from cursor to **end of line**. |
| `s` | **Substitute** (delete) the character under the cursor and enter Insert Mode. |
| `S` (Shift+s) | **Substitute** (delete) the entire line and enter Insert Mode (same as `cc`). |

### Copy & Paste (Yank & Put)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `yy` | **Yank** (copy) the entire current line. |
| `yw` / `yiw` | **Yank** (copy) a word. |
| `p` | **Put** (paste) the copied text *after* the cursor. |
| `P` (Shift+p) | **Put** (paste) the copied text *before* the cursor. |

### History

| Keystroke(s) | What It Does |
| :--- | :--- |
| `u` | **Undo** the last change. |
| `Ctrl` + `r` | **Redo** the last undone change. |

## 3. Window, Tab & Buffer Management

### Buffers (The "Tabs" at the top)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `<Space>x` | **Close buffer** (removes the file "tab"). |
| `<Space>c` | **Close window** (closes the current split). |
| `:bd` | Command for "buffer delete" (same as `<Space>x`). |
| `:q` | Command for "quit window" (same as `<Space>c`). |
| `:qa` | Command to **quit all** windows and exit Neovim. |

### Window Splits

| Keystroke(s) | What It Does |
| :--- | :--- |
| `Ctrl+w` `s` | Split the window **horizontally**. |
| `Ctrl+w` `v` | Split the window **vertically**. |
| `Ctrl+w` `h/j/k/l` | Move to the window in the direction (left/down/up/right). |
| `Ctrl+w` `c` | Close the active window split. |

## 4. Terminals

| Keystroke(s) | What It Does |
| :--- | :--- |
| `<Space>ft` | **Toggle** a **f**loating **t**erminal (at project root). |
| `<Space>tt` | **Toggle** a **t**erminal in the **current file's directory** (our custom keymap). |
| `<Esc>` | While in the terminal, press `Esc` to enter Normal Mode (so you can close it). |
| `:!node %` | **Run the current file** with `node` and see output. |
| `:!python3 %` | **Run the current file** with `python3` and see output. |

## 5. Code & Plugin Commands

### Commenting (Toggle)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `gcc` | Toggle comment on the **current line**. |
| `gc` + `motion` | Toggle comment over a motion (e.g., `gc5j` for 5 lines). |
| `Shift+V` + `j/k` + `gc` | **Visual Line Mode**: Select lines, then `gc` to toggle comments (most common). |

### File Explorer (Neo-Tree)

| Keystroke(s) | What It Does |
| :--- | :--- |
| `<Space>e` | **Toggle** the file **E**xplorer. |
| `a` | **Add** a new file or directory. |
| `d` | **Delete** a file or directory. |
| `r` | **Rename** a file or directory. |
| `Enter` | Open a file in the main window. |
| `s` | Open a file in a **vertical split**. |

### File Fixing & Utilities

| Keystroke(s) | What It Does |
| :--- | :--- |
| `:set fileformat=unix` | **Remove `^M` (Windows)** characters from the file. You must `:w` (save) the file afterward to make it permanent. |
| :%s/\r//g | An alternative (search/replace) way to do the same thing. It removes all carriage return (`\r`) characters. |

