# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Rosetta Terminal (macOS only)](rosetta_terminal.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [x] [Python](python.md)
- [x] [PostgreSQL](postgres.md)
- [ ] **Django**
- [ ] [MongoDB](mongodb.md)
- [ ] [VSCode](vscode.md)
- [ ] [Chrome](chrome.md)

## Django

This script will create two new folders on your machine: `sei` and a sub-folder `django-env`.

The final folder structure will look like this:

```
~/sei
├── django-env
```

The `django-env` folder will be used to hold the Pipenv virtual environment and
dependencies we'll need to work with the Django framework.

In your terminal, run:

```
scripts/django.sh
```

### Expectations

The script will hang as the server runs - you should see something like this:

```
System check identified no issues (0 silenced).
September 09, 2021 - 18:54:52
Django version 3.0, using settings 'config.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.

Server test success! Quit now with CONTROL-C to continue the installfest.
```

If you see anything other than a success message, let an instructor know. Otherwise, follow the instructions to use `ctrl+c` to continue the installfest.

----

### Before You Go

Double-check the [expectations](#expectations) section to ensure you didn't run into
any errors when running the test server. Reach out to an instructor if you see anything other than what's expected.

----

[Continue With Installfest](mongodb.md)
