# Installfest

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [x] [Rosetta Terminal (macOS only)](rosetta_terminal.md)
- [x] [Homebrew](homebrew.md)
- [x] [Node](node.md)
- [x] [Python](python.md)
- [ ] **PostgreSQL**
- [ ] [Django](django.md)
- [ ] [MongoDB](mongodb.md)
- [ ] [VSCode](vscode.md)
- [ ] [Chrome](chrome.md)

## PostgreSQL

We will be installing PostgreSQL, an open source relational database management system. In SEI, we will be writing SQL (structured query language) and maintaining our relational databases using Postgres.

Enter the following command in your terminal

```bash
scripts/postgres.sh
```

----

### Before You Go

Let's make sure Postgres is running properly.

#### MacOS Only

```bash
brew services list
```

(*macOS*) Postgres will only work if you see a service with a `Name` of postgresql
and `Status` say `started` in **green**

#### Linux Only

```bash
service postgresql status
```

(*Linux*) Postgres will only work if you see a green circle and the words
"active (running)" somewhere in the output.

If Postgres didn't start correctly according to the criteria above, ask a
consultant for assistance.

----

Run the Postgres shell with the following command:

```bash
psql
```

This should bring you into the PostgreSQL interactive terminal. It should look something like this

```bash
psql (<version_number>)
Type "help" for help.

<your_username>=#
```

Exit the psql terminal by typing `\q`, followed by `Enter`

----

[Continue With Installfest](django.md)
