# Neovim Configuration  

A minimal Neovim configuration of mine very messy tho.
Focused on python cuz it's pretty much what I know with C# but since I'm new at this I use Visual Studio for that one lol.

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
git clone https://github.com/acura31/neovim-config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim  
```

### For Windows

Using Command Prompt (cmd):
```cmd
git clone https://github.com/acura31/neovim-config.nvim.git "%localappdata%\nvim"  
```

Using PowerShell:
```powershell
git clone https://github.com/acura31/neovim-config.nvim.git "${env:LOCALAPPDATA}\nvim"  
```

You're all set! Open Neovim and run the following command to manage and view the plugin status:
```vim
:Lazy
```

