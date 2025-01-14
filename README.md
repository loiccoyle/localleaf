<p align="center">
  <img src="https://loiccoyle.com/images/projects/localleaf/cover.png" alt="Localleaf cover image" />
  <a href="https://github.com/loiccoyle/localleaf/actions/workflows/ci.yml"><img src="https://github.com/loiccoyle/localleaf/actions/workflows/ci.yml/badge.svg"></a>
  <a href="https://aur.archlinux.org/packages/localleaf-git"><img src="https://img.shields.io/aur/version/localleaf-git" alt="AUR version"></a>
  <img src="https://img.shields.io/github/license/loiccoyle/localleaf" alt="License">
</p>
<h1 align="center">🍃 localleaf 🍃</h1>
<p align="center"><strong>Easy breezy LaTeX:</strong> A tool to monitor and build LaTeX projects, powered by Docker.</p>

## ✨ Key Features

- Monitors `.tex` files and rebuilds the project automatically.
- Supports various LaTeX engines (e.g., `pdflatex`, `xelatex`, `lualatex`).
- Keeps your project directory clean with configurable output paths.

## 📋 Usage

To start monitoring and building a LaTeX project, run:

```bash
localleaf project_dir/ -m project_dir/main_document.tex
```

If in doubt check the `-h`elp.

<!-- help start -->

```console
$ localleaf -h
Easy breezy latex.

Spins up a latex docker image, monitors source files and builds on change.

Usage: localleaf [OPTIONS] [PROJECT_DIR] -- [EXTRA_ARGS]
  -h                          Show this message and exit.
  -m MAIN_DOCUMENT            The main document of the latex project.
  -e ENGINE                   Latex engine. [pdflatex] {latex,pdflatex,xelatex,lualatex}
  -i IMAGE                    Docker image. [loiccoyle/localleaf]
  -c                          Commit changes on exit.
  -1                          Don't monitor, build once and exit.
  PROJECT_DIR                 Root directory of the latex project. ['.']
  EXTRA_ARGS                  Extra arguments to pass to latexmk, e.g. --outdir=build/
```

<!-- help end -->

> [!TIP]
> Run with `localleaf {your args} -- --outdir=build/ --auxdir=aux/` to not clutter the root directory with the build and auxiliary files.

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

> [!TIP]
> To keep the docker image up to date, run `docker pull loiccoyle/localleaf` from time to time.
