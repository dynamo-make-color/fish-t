# t
Create your project file from some useful resources in [fish shell](https://github.com/fish-shell/fish-shell).

## Installation

### System Requirements

- curl
- [fish](https://github.com/fish-shell/fish-shell) >= `3.2.0`
- [fisher](https://github.com/jorgebucaran/fisher)
- [jq](https://github.com/stedolan/jq) to generate LICENSE

Install by following command:
```fish
fisher install dynamo-make-color/fish-t
```

## Usage
| Sub command                              | Purpose                                                                                              |
|------------------------------------------|------------------------------------------------------------------------------------------------------|
| license                                  | List all available templates of LICENSE file                                                         |
| license [key]                            | Generate LICENSE file in current folder by a key, see above sub-command                              |
| gi, gitignore                            | List template of .gitignore from gitignore.io                                                        |
| git [key,key...], gitignore [key,key...] | Generate .gitignore file in current folder by list of keys, separate by comma, see above sub-command |
