# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [ ] **Command Line Tools - Xcode (macOS only)**
- [ ] [Rosetta Terminal (macOS only)](rosetta_terminal.md)
- [ ] [Homebrew](homebrew.md)
- [ ] [Node](node.md)
- [ ] [Python](python.md)
- [ ] [PostgreSQL](postgres.md)
- [ ] [Django](django.md)
- [ ] [MongoDB](mongodb.md)
- [ ] [VSCode](vscode.md)
- [ ] [Chrome](chrome.md)

## Command Line Tools (Xcode)

In order for Homebrew and other tools to work, we'll need to rely on a number of programs that
come pre-installed on Linux. Install these tools **via the terminal** using the
command:

```shell
# macOS ONLY
xcode-select --install
```

If the dialog box below appears, you should click on the `Install` button.

<img width="449"
 alt="cdn_osxdaily_com_wp-content_uploads_2014_02_confirm-install-command-line-tools-mac-os-x_jpg"
 src="https://cloud.githubusercontent.com/assets/388761/23191483/da2ed6c4-f86b-11e6-8f8c-df842736b899.png"
/>

This may require that you run a Software Update before proceeding.

If you see a message similar to the one below, you are all set to continue!
```
xcode-select: error: command line tools are already installed, use "Software Update" to install updates
```

----

### Before You Go

In your terminal type: `xcode-select --version`

If you see a message similar to the one below, you are all set to continue! If not, reach out to one of the instructors for help.

```sh
xcode-select version 2384.
```

----

[Continue With Installfest](rosetta_terminal.md)
