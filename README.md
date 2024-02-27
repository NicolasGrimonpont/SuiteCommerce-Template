# SuiteCommerce Template

- [Environment installation](#environment-installation)
- [Start working on a project](#start-working-on-a-project)
- [EditorConfig](#editorconfig)
- [Create an integration record.](#create-an-integration-record)
- [Generate SASS helpers documentation](#generate-sass-helpers-documentation)
- [Manage Tokens](#manage-tokens)
- [Node versions for SuiteCommerce](#node-versions-for-suitecommerce)
- [Gulp commands](#gulp-commands)
- [MacOS command lines](#macos-command-lines)

## Environment installation

1. Install Node Package Manager (nvm) to work with different versions of Node.

    ```bash
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    ```

    or

    ```bash
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
    ```

2. Install Gulp.js globally

    ```bash
    npm install --global gulp
    ```

3. Install the version of node that you need depending of the version of SuiteCommerce

    ```bash
    nvm install 14.19.0
    ```

4. Use the version of node that you need depending of the version of SuiteCommerce

    ```bash
    nvm use 14.19.0
    ```

## Start working on a project

1. Clone this repository template locally, then publish it wherever you like (Github, Bitbucket, etc.)

    ```bash
    git clone https://github.com/NicolasGrimonpont/SuiteCommerce-Template.git
    ```

2. Download the ThemeDevelopmentTools or ExtensionDevelopmentTools from your NetSuite account

3. In your DevTools folder, install the node packages with the corresponding node version

    ```bash
    nvm 14.19.0
    npm install
    ```
4. Fecth your the theme or extensions installed on the NetSuite account

    ```bash
    gulp theme:fetch
    gulp extension:fetch
    ```
5. Run the project locally

    ```bash
    gulp theme:local
    gulp extension:local
    ```

5. Deploy your changes

    ```bash
    gulp theme:deploy --reactivate
    gulp extension:deploy --reactivate
    ```

## EditorConfig

To work in the same way with each team member, if you use vscode, please install this extension.
This extension will take the settings in the .editorconfig file and use them, no matter what settings you have in your editor.

If you're using webstorm, phpstorm, etc., this file will be taken into account by the editor by default.

    Name: EditorConfig for VS Code
    Id: EditorConfig.EditorConfig
    Description: EditorConfig Support for Visual Studio Code
    Publisher: EditorConfig
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig

## Create an integration record.

Go to Setup > Integration > Integration Management > Manage Integrations > New

1. In the Name field, enter a name for the integration record.
2. In the State field, select Enabled.
3. Check the Token-Based Authentication box.
4. Check the TBA: Authorization Flow box.
5. In the Callback URL field, enter: http://localhost:7777/tba.
6. Clear the Authorization Code Grant box.
7. Check the User Credentials box.
8. Save the integration. Be sure to save the consumer key/secret before closing the page.
9. Copy and paste the consumer key/secret in the .env file.

## Generate SASS helpers documentation

More information:
[Netsuite Help Center](https://5346778.app.netsuite.com/app/help/helpcenter.nl?fid=bridgehead_4249032125.html)

This feature currently don't work (work in progress). 

### Install SassDoc on your project

Install SassDoc globally on your computer if you haven't done so before.

```bash
npm install sassdoc -g
```

### Run SassDoc on your project

Inside your DevTools folder, execute this command

```bash
. '/Users/home/Documents/Bitbucket/axessorize-sca-theme/Scripts/generate_sassdoc.sh'
```

## Manage Tokens

The tokens are store in your computer root user like hidden file (ex: "/Users/home/.nstba") where "home" will be your username of the computer.

To show all the netsuite tokens in your computer:

    sudo cat /Users/home/.nstba

To remove all the tokens:

    sudo rm /Users/home/.nstba

To open this file on your editor (GUI):

    sudo open /Users/home/.nstba

To open this file on your editor (Command lines):

    sudo nano /Users/home/.nstba

## Node versions for SuiteCommerce

| Commerce Web Store Implementation              | Supported Node.js Versions   |
|-----------------------------------------------|------------------------------|
| SuiteCommerce                                  | 14.19.0                      |
| SuiteCommerce MyAccount                        | 14.19.0                      |
| SuiteCommerce Advanced — 2022.2.1              | 14.19.0                      |
| SuiteCommerce Advanced — 2022.2                | 12.21.x                      |
| SuiteCommerce Advanced — 2022.1                | 12.21.x                      |
| SuiteCommerce Advanced — 2021.2                | 12.21.x                      |
| SuiteCommerce Advanced — 2021.1                | 12.21.x                      |
| SuiteCommerce Advanced — 2020.2                | 12.16.x                      |
| SuiteCommerce Advanced — 2020.1                | 12.14.x                      |
| SuiteCommerce Advanced — 2019.2                | 10.16.x                      |
| SuiteCommerce Advanced — 2019.1                | 10.15.x                      |
| SuiteCommerce Advanced — 2018.2                | 8.11.4                       |
| SuiteCommerce Advanced — Aconcagua             | 8.9.x LTS                    |
| SuiteCommerce Advanced — Kilimanjaro           | 6.11.x                       |
| SuiteCommerce Advanced — Elbrus               | 4.x.x LTS and Later          |
| SuiteCommerce Advanced — Vinson               | 4.x.x LTS                    |
| SuiteCommerce Advanced — Mont Blanc            | 4.4.x and 0.12.x             |
| SuiteCommerce Advanced — Denali                | 0.12.x                       |

## Gulp commands

For more information about this commands, please read the online documentation:
- [Oracle NetSuite Gulp Command Reference](https://docs.oracle.com/en/cloud/saas/netsuite/ns-online-help/section_1510956587.html#Gulp-Command-Reference-for-Theme-and-Extension-Developer-Tools)


### Theme Developer Gulp Commands

- gulp theme:update-manifest

- gulp theme:local
- gulp theme:local --preserve-manifest

- gulp theme:fetch
- gulp theme:fetch --to

- gulp theme:deploy
- gulp theme:deploy --to
- gulp theme:deploy --reactivate
- gulp theme:deploy --update
- gulp theme:deploy --reactivate --update
- gulp theme:deploy --preserve-manifest
- gulp theme:deploy --skip-compilation
- gulp theme:deploy --source templates
- gulp theme:deploy --source sass
- gulp theme:deploy --source assets
- gulp theme:deploy --source skins

- gulp reactivate
- gulp reactivate --async
- gulp reactivate --update

- gulp clear

### Extension Developer Gulp Commands

- gulp extension:update-manifest

- gulp extension:local
- gulp extension:local --preserve-manifest

- gulp extension:fetch
- gulp extension:fetch --to

- gulp extension:deploy
- gulp extension:deploy --to
- gulp extension:deploy --reactivate
- gulp extension:deploy --update
- gulp extension:deploy --reactivate --update
- gulp extension:deploy --preserve-manifest
- gulp extension:deploy --skip-compilation
- gulp extension:deploy --source templates
- gulp extension:deploy --source sass
- gulp extension:deploy --source assets
- gulp extension:deploy --source skins

- gulp reactivate
- gulp reactivate --async
- gulp reactivate --update

- gulp clear

## MacOS command lines

https://explainshell.com/

### Common commands

```bash
ls (list files by default)
ls -1 (list files, one column)
ls -all (list files, all information)

mkdir directory (create directory)
rm -R directory (remove directory)

touch file.txt (create file)
rm file.txt (remove file)
cat file.txt (read content)

cp file.txt file2txt (copy)
mv file.txt file2txt (move)

sudo !! (repeat last command like root)

clear (clear screen)
CTRL + L (clear screen)

pwd (actual route)
```

### Advanced commands

```bash
history | grep something (search in history)

top (activity monitor)

locate finder (search)
locate updatedb

whereis dash (search bin)
```

### Kill port used by SuiteCommerce

```bash
sudo lsof -ti :7777 | xargs kill
```

### Sudo commands with TouchID

This needs to change some of the system files and requires at least macOS Sonoma to be done permanently.

Duplicate the new original file system template from Sonoma to create a new file:

```bash
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
```
Then, remove the comment on the last line of the file:

```bash
sudo nano /etc/pam.d/sudo_local (and remove last line comment)
```