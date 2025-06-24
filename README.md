https://wezterm.org/config/files.html#quick-start

# Window
For window use PowerShell **NOT** "Window PowerShell"

- Install chocolatey
```
wighet install chocolatey
```
- Install nerd font
```
choco search nerd

choco install nerd-fonts-hack
```
- Install lsd & starship & wezterm 
```
choco install lsd starship wezterm 
```

- [Powershell](https://starship.rs/)
  
Add the following to the end of Microsoft.PowerShell_profile.ps1. You can check the location of this file by querying the $PROFILE variable in PowerShell. Typically the path is ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 or ~/.config/powershell/Microsoft.PowerShell_profile.ps1 on -Nix.
```
Invoke-Expression (&starship init powershell)
```

- [Starship](https://starship.rs/config/): Create file starship.toml located in ~/.config/starship.toml
- [Wezterm](https://wezterm.org/config/files.html): Create file .wezterm.lua located in ~/.wezterm.lua
