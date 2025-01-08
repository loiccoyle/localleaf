# 🍃 localleaf

![License](https://img.shields.io/github/license/loiccoyle/localleaf)
[![CI](https://github.com/loiccoyle/localleaf/actions/workflows/ci.yml/badge.svg)](https://github.com/loiccoyle/localleaf/actions/workflows/ci.yml)
[![AUR version](https://img.shields.io/aur/version/localleaf-git)](https://aur.archlinux.org/packages/localleaf-git)

> Easy breezy latex.

Spins up a latex docker image, monitors .tex files and builds on change.

## 📋 Usage

1. Download your overleaf source and extract it.
   > Pro-tip: sync your project with github and clone it instead!
2. Run `localleaf project_folder project_folder/main_document.tex`

If in doubt check the `-h`elp.

<!-- help start -->

```console
$ localleaf -h
```

<!-- help end -->

## 📦 Installation

#### Dependencies

You only need `docker`.

#### Manual

Clone this repo and add the script somewhere on your `$PATH`.

```bash
git clone https://github.com/loiccoyle/localleaf
mv localleaf/localleaf ~/.local/bin/
```

#### Arch

Using your favourite AUR helper:

```bash
paru -S localleaf-git
```

## 📜 TODO

- [x] Add ci
- [x] Add tests to ci
- [x] Fix root permission on build files
- [ ] Double check commit on exit
