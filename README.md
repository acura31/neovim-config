# Neovim Configuration  

This is my minimal Neovim config, it's a bit messy though. It's mostly set up for Python, HTML, CSS, JavaScript, React, and stuff like that.

## External Requirements  

Before installing, ensure you have the following dependencies installed on your system:  

- **Basic Utilities**:  
  - `git`  
  - `make`  
  - `unzip`  
  - A C compiler (e.g., `gcc`)  

- **Additional Tools**:  
  - [`ripgrep`](https://github.com/BurntSushi/ripgrep#installation) (for fast file searching)  
  - A clipboard tool (choose based on your platform):  
    - `xclip` / `xsel` (Linux)  
    - `win32yank` (Windows)  
  - A [Nerd Font](https://www.nerdfonts.com/) (to display icons correctly).  

---

## Installation  

### For Linux/MacOS  

Clone the configuration repository into your Neovim configuration directory:  
```bash  
git clone https://github.com/acura31/neovim-config "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim  
```

### For Windows

Using Command Prompt (cmd):
```cmd
git clone https://github.com/acura31/neovim-config "%localappdata%\nvim"  
```

Using PowerShell:
```powershell
git clone https://github.com/acura31/neovim-config "${env:LOCALAPPDATA}\nvim"  
```

You're all set! Open Neovim and run the following command to manage and view the plugin status:
```vim
:Lazy
```

