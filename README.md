# 🍃 localleaf

> Easy breezy latex.

Spins up a latex docker image, monitors .tex files and builds on change.

## 📋 Usage

1. Download your overleaf source and extract it.
   > Pro-tip: sync your project with github and clone it instead!
2. Run `localleaf project_folder project_folder/main_document.tex`

If in doubt check the `-h`elp.

<!-- help start -->
```
$ localleaf -h
pre tput
```
<!-- help end -->

## 📦 Installation

#### Manual

Clone this repo and add the script somewhere on your `$PATH`.

```bash
git clone https://github.com/loiccoyle/localleaf
mv localleaf/localleaf ~/.local/bin/
```

<!--
### Arch

TODO
-->

## 📜 TODO

- commit on exit
- test
- completion
- ci
