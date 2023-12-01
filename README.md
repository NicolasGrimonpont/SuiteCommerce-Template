# SuiteCommerce Template
A template for getting started on a SuiteCommerce project

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

## Addtionals tools

To work in the same way with each team member, if you use vscode, please install this extension.
This extension will take the settings in the .editorconfig file and use them, no matter what settings you have in your editor.

If you're using webstorm, phpstorm, etc., this file will be taken into account by the editor by default.

    Name: EditorConfig for VS Code
    Id: EditorConfig.EditorConfig
    Description: EditorConfig Support for Visual Studio Code
    Version: 0.16.4
    Publisher: EditorConfig
    VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig