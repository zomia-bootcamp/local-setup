# Local Environment Setup

- [x] [Github and Initial Setup](github.md)
- [x] [Git](git.md)
- [x] [Bash Configuration](bash.md)
- [x] [Command Line Tools - Xcode (macOS only)](command_line_tools.md)
- [ ] **Rosetta Terminal (macOS only)**
- [ ] [Homebrew](homebrew.md)
- [ ] [Node](node.md)
- [ ] [VSCode](vscode.md)
- [ ] [Chrome](chrome.md)

## Rosetta Terminal

To use some of our command-line tools within the new M1 chip for macOS 
computers, we need to set up the terminal to use something called Rosetta. 

### Check Your Processor

Run the following command: 

```sh
uname -m
```

If you see `x86_64` in response, do not run the steps in the following section. 
Instead, [continue with Installfest](homebrew.md).

If you see `arm64` in response, continue with the steps in the section below. 

### Set Up Custom Terminal Profile 

> Note: Only complete the below steps if you got `arm64` as a part of the steps
> in the section above.

1. Open Finder and navigate to `Applications -> Utilities`
2. Right-click on the Terminal app and choose `Duplicate`

*Help! I can't find the `Duplicate` option*
<details>
<summary>macOS</summary>

- Run the following command in your terminal:

```arch
arch #=&gt; arm64
env &#x2F;usr&#x2F;bin&#x2F;arch -x86_64 &#x2F;bin&#x2F;zsh --login
arch #=&gt; i386
```
- Then, run: 

```sh
uname -m
```

If you see `x86_64` in response, do not run the steps in the following section, and [Continue With Installfest](homebrew.md). 

</details>
  
3. Rename your newly duplicated Terminal app `Rosetta-Terminal`
4. Right-click the `Rosetta-Terminal` app and click on `Get Info`
5. Select the option to `Open using Rosetta`

For the rest of Installfest and this program, you will use the `Rosetta-Terminal`
program instead of your normal terminal. 

----


[Continue With Installfest](homebrew.md)
