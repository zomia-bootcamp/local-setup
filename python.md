# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Rosetta Terminal (macOS only)](rosetta_terminal.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [ ] **Python**
- [ ] [PostgreSQL](postgres.md)
- [ ] [Django](django.md)
- [ ] [MongoDB](mongodb.md)
- [ ] [VSCode](vscode.md)
- [ ] [Chrome](chrome.md)

## Python

This script will install the Python language onto your computer. If you have a Mac, you may have a certain version of Python installed, but we will be making sure everyone is on the same version.

We will also be installing a package that will help us install other Python things called `pip`.

In your terminal, run:

```
scripts/python.sh
```

**Restart your terminal (close it; not just the window! Then reopen it and `cd` back into the installfest directory)**
  - On macOS, this can be done with the keyboard shortcut (&#8984; + Q)
  - On Linux this can be done with the keyboard shortcut (CTRL + D)

In your terminal, run:

```
scripts/python.sh python
```


----

### Before You Go

In your terminal, type: `python --version && pipenv --version`

If you see a version similar to the one below (**Python should be higher than 3.0.0**), you are all set to continue! If
not, reach out to one of the instructors to get help.

```sh
Python 3.7.7
pipenv, version 2021.5.29
```

----

[Continue With Installfest](postgres.md)
