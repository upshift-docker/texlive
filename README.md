# Basic TeX Live environment

TeX Live is an easy way to get up and running with the TeX document production system. It provides a comprehensive TeX system with binaries for most flavors of Unix, including GNU/Linux, and also Windows. It includes all the major TeX-related programs, macro packages, and fonts that are free software, including support for many languages around the world.

## Usage

This image provides a basic TeX Live environment.

Start the container, giving access to command line:

```console
# docker run \
	--rm --tty --interactive \
	upshift/texlive
```

Start the container, compiling TeX document in local directory:

```console
# docker run \
        --rm --tty --interactive \
	--volume $PWD:/work \
        upshift/texlive \
	pdflatex document.tex
```

