# Notes

## Fork and Clone

Be sure to show developers how to fork and clone on the projector. Refer to [FAQ](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone) for visuals and walkthrough.

## Common Problems

Here is a list of common issues encountered during installfest

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
