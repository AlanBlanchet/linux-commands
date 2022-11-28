# Linux-Commands

This package is intended for people who know how to use linux and some other tools like git.
It will save you time in running commands by making aliases.

## Installation

Clone the repository

```bash
git clone https://github.com/AlanBlanchet/linux-commands
```

Install is with `./install.sh`

The install will move all files to `~/.aliases/` and delete all other content from `./`.

## Use commands

Linux-Commands will have sourced shortcuts so you can use them in your bash terminal.

To get help, use

```bash
aliases --help
```

To see what commands have shortcuts, use

```bash
aliases --list
```

Here is a list of the currently supported commands :

- [apt](https://github.com/AlanBlanchet/linux-commands/blob/master/src/apt.txt)
- [django](https://github.com/AlanBlanchet/linux-commands/blob/master/src/django.txt)
- [git](https://github.com/AlanBlanchet/linux-commands/blob/master/src/git.txt)
- [npm](https://github.com/AlanBlanchet/linux-commands/blob/master/src/npm.txt)
- [cp](https://github.com/AlanBlanchet/linux-commands/blob/master/src/cp.txt)
- [zip](https://github.com/AlanBlanchet/linux-commands/blob/master/src/zip.txt)

## Examples

`gaa` => `git add all`

`ns` => `npm start`

`sai x` => `sudo apt install x`