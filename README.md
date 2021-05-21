# OpenWith4D

Utility scripts to open with 4D for macOS from Terminal and other apps.

> If its a source file (`.4dm`), it will open the parent project, and then file. The current version of 4D do not allow that and just do nothing if its not a file of the current base.

## Install on macOS

Download and add execution right

```bash
sudo curl -L https://raw.githubusercontent.com/mesopelagique/OpenWith4D/master/macos/4d -o /usr/local/bin/4d && chmod +x /usr/local/bin/4d
```

> 💡 Your password will be prompted to install in `/usr/local/bin`

## Usage

### Usage in Terminal

Open with 4D folder, project or source file using the command line.

#### Open 4d

```
4d 
```

same as `open -a "4D"`

#### Open a projet root folder

```
4d $HOME/Kaluza # open the project inside $HOME/Kaluza/Project/
```

##### for current folder

```
4d
```

or

```
4d .
```

#### Open a projet file

```
4d $HOME/Kaluza/Project/Kaluza.4DProject 
```

#### Open a source file (if inside a project)

```
4d $HOME/Kaluza/Project/Sources/Methods/install_github.4dm
```

### Use with SourceTree (Git GUI)

[SourceTree](https://www.sourcetreeapp.com/) allow you to use custom action. 

![SourceTreeAction](assets/sourcetree-action.png)

So using a shortcut, you can open your 4d project in 4D.

### Use with Paletro and Finder.app

[Paletro](https://appmakes.io/paletro) allow to [add extension](https://appmakes.io/paletro/docs/#/Build-Extension)

Download this project source file and open folder `openin4d.pext`, it will install the extension if you have [Paletro](https://appmakes.io/paletro) 

> App available also using [Setapp](https://go.setapp.com/invite/neko4) (the Netflix of Mac Apps).

![PaletroExt](assets/paletro-extension.png)

### Use with ...

💡 You can achieve this with other tools. (You can Pull Request this project to explain how)
