# Notes

## Fork and Clone

Be sure to show developers how to fork and clone on the projector. Refer to [FAQ](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone) for visuals and walkthrough.

## Common Problems

Here is a list of common issues encountered during installfest

### Node issues
**Problem** the script installs nvm but when checking the nvm version, the command is not found

**Solution** 

If you have installed nvm (Node Version Manager) on your Mac and are encountering a "command not found" error when trying to run nvm commands in a new terminal session, it could be due to a misconfiguration in your shell initialization files. Here's what you can do to fix this issue:

1. Open your terminal application.

2. Check which shell you are using by running the following command:


```
echo $SHELL
```

3. Depending on the shell, proceed with the corresponding step below:

   - If you are using Bash:
     - Open your Bash configuration file in a text editor. The file is usually `~/.bashrc` or `~/.bash_profile`.
     - Add the following line at the end of the file:
       ```
       export NVM_DIR="$HOME/.nvm"
       [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
       ```
     - Save the file and close it.

   - If you are using Zsh:
     - Open your Zsh configuration file in a text editor. The file is usually `~/.zshrc`.
     - Add the following line at the end of the file:
       ```
       export NVM_DIR="$HOME/.nvm"
       [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
       ```
     - Save the file and close it.

4. Close and reopen your terminal or run the following command to refresh your shell configuration:
```
source ~/.bashrc  # or source ~/.bash_profile if you are using Bash
```
If you are using Zsh, run:
```
source ~/.zshrc
```

5. Now you should be able to run nvm commands without encountering the "command not found" error.

Please note that if you have multiple shell configuration files (e.g., both `~/.bashrc` and `~/.bash_profile` exist), it's important to choose and modify the appropriate file for your setup.

### Set Defualt Node Version

**Problem** the node version changes everytime the terminal reastarts

**Solution**

First intall the latest version `nvm install --lts  



If you want to use the latest version of Node.js that is already installed on your Mac, but your terminal session reverts to using an older version (v16.2.0) upon restarting, you can try the following steps to set the desired Node.js version as the default:

1. Open your terminal application.

2. Check the currently installed versions of Node.js using the following command:
```
nvm ls
```
This command will display the list of installed Node.js versions on your system.

3. Identify the latest version of Node.js from the list and note its version number.

4. Set the desired Node.js version as the default by running the following command:
```
nvm alias default <version>
```
Replace `<version>` with the actual version number you noted in the previous step.

5. Verify that the default version has been set correctly by running the following command:
```
node --version
```
It should display the version number of the latest Node.js version you set as the default.

6. Close and reopen your terminal to ensure the changes take effect.

After performing these steps, your terminal should use the latest version of Node.js as the default. If you encounter any issues or the problem persists, ensure that your nvm installation is properly configured and that the desired Node.js version is installed correctly using nvm.


### PATH issues
**Problem** Using default version of Node (not the ones installed through homebrew with nvm)

`/bin` should not be in the location of the software we use

-   `which node` should output something like `/Users/<username>/.nvm/versions/node/v<node_version>/bin/node`

In the result of `echo $PATH`
the location of rbenv and nvm should come before `/usr/local/bin`

**Solution** Ensure that nvm was installed correctly

-   Issues with node
    - The `nvm.sh` script adds the following snippet to ~/.bashrc that sets up the path for node. Make sure it was successfully added.
    ```
    . $(brew --prefix nvm)/nvm.sh
    ```

### ESlint in Atom - deprecated but keeping just in case if we run into the same problem with the package on vscode.
**Problem** Pop ups in Atom in JavaScript file complaining about ESlint

**Solution** ESlint should be disabled if no config file is found in repo. This is the default, but sometimes doesn't get set
![ESlint Atom Settings](https://git.generalassemb.ly/storage/user/5689/files/de279074-421a-11e7-9048-a21212958785)

## Cohort Refresh

Some maintenance must be kept on this repository. For each cohort:

1. Make sure technology versions are consistent with what templates are using
    - check `node` version in [config.yml](config.yml)
      ```
      nvm install --lts=boron || nvm install <number_version_of_node>
      ```
2. Try to resolve and close (or at least have discussion about) open issues

3. Make sure screenshot of Chrome settings is up to date [Chrome](chrome.md)

## Version Reference

Check [scripts/config.yml](config.yml) for current versions, or run from root of this directory: `sh scripts/test_config.sh`
