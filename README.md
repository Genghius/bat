# BAT

A cat(1) clone without that "Rust" garbage.

## Syntax highlighting

`bat` supports syntax highlighting for a large number of programming and markup languages:

## How to use

Display a single file on the terminal

```sh
> bat file
```

Display multiple files at once

```sh
> bat file1 file2 ...
```

Dont use cat if no syntax-highlight is found

```sh
> bat -n file
```

Dont output file names

```sh
> bat -c file
```

## Installation

Depends on [source-highlight](https://www.gnu.org/software/src-highlite/)

```sh
git clone https://github.com/Genghius/bat
cd bat
sudo make install
```
