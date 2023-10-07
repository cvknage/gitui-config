<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/extrawurst/gitui">Gitui</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/gitui/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/gitui?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/gitui/issues"><img src="https://img.shields.io/github/issues/catppuccin/gitui?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/gitui/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/gitui?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="./assets/previews/preview.webp"/>
</p>

## Previews

<details>
<summary>🌻 Latte</summary>
<img src="./assets/previews/latte.webp"/>
</details>
<details>
<summary>🪴 Frappé</summary>
<img src="./assets/previews/frappe.webp"/>
</details>
<details>
<summary>🌺 Macchiato</summary>
<img src="./assets/previews/macchiato.webp"/>
</details>
<details>
<summary>🌿 Mocha</summary>
<img src="./assets/previews/mocha.webp"/>
</details>

## Usage

1. Clone this repository locally
2. Run the install script; `bash install.sh` to create a symlink from `$HOME/.config/gitui` to `./theme`.
3. Add the following to your shells' rc file:
``` bash
gitui_theme() {
  OS="$(uname)"
  case $OS in
  "Linux")
    # gdbus call --session --dest org.freedesktop.portal.Desktop --object-path /org/freedesktop/portal/desktop --method org.freedesktop.portal.Settings.Read org.freedesktop.appearance color-scheme
    if [[ $(gsettings get org.gnome.desktop.interface color-scheme) =~ "dark" ]]; then
      gitui -t mocha.ron
    else
      gitui -t frappe.ron
    fi
    ;;
  "Darwin")
    if [[ $(defaults read -g AppleInterfaceStyle) == "Dark" ]]; then
      gitui -t mocha.ron
    else
      gitui -t frappe.ron
    fi
    ;;
  *)
    gitui -t macchiato.ron
    ;;
  esac
}

alias gitui="gitui_theme"
```
4. Run `gitui` and see the magic happen!

> **Note**: The theme you choose should be the same theme as in your terminal configuration, as the colors look bad without it.

## 💝 Thanks to

- [BlueFalconHD](https://github.com/bluefalconhd)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
