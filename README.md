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
Easy breezy latex.

Spins up a latex docker image, monitors .tex files and builds on change.

Usage: localleaf [OPTIONS] [PROJECT_DIR] -- [EXTRA_ARGS]
  -h                          Show this message and exit.
  -m MAIN_DOCUMENT            The main document of the latex project.
  -e ENGINE                   Latex engine. [pdflatex] {latex,pdflatex,xelatex,lualatex}
  -i IMAGE                    Docker image. [loiccoyle/localleaf]
  -c                          Commit changes on exit.
  -1                          Don't monitor, build once and exit.
  -p                          Set build files owner's to $USER:$USER on exit. Requires sudo access.
  PROJECT_DIR                 Root directory of the latex project. ['.']
  EXTRA_ARGS                  Extra arguments to pass to latexmk, e.g. --outdir=build/
```

<!-- help end -->

## 📦 Installation

### Dependencies

You only need `docker`.

### Manual

Clone this repo and add the script somewhere on your `$PATH`.

```bash
git clone https://github.com/loiccoyle/localleaf
mv localleaf/localleaf ~/.local/bin/
```

### Arch

Using your favourite AUR helper:

```bash
paru -S localleaf-git
```

## 📜 TODO

- [x] Add ci
- [x] Add tests to ci
- [x] Fix root permission on build files
- [ ] Double check commit on exit
