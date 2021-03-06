#DotFiles

These dotfiles are a work in progress, but mostly meant for a high
performance computing software development system with

- Debian
- Fluxbox
- Emacs for heavy text editing
- Vim for quick text editing [i e, commit messages, configuration files...]
- Cannot decide yet whether to use zsh or good ol' bash
- Other things I haven't thought of yet


Ideally installation will be covered with
[FAI](http://fai-project.org/), but maybe it is not worth it. Just to
keep tracks on the needed packages:


##Packages meant to be installed in the distro

### General purpose
- Display Manager: LightDM (lightdm lightdm-gtk-greeter)
- Desktop: Fluxbox (fluxbox feh)
- Widget: Conky (conky)
- File Browser: Midnight Commander (mc)
- Typesetting: LaTeX (latex)
- TMux (tmux)
- Unicode rxvt (rxvt-unicode)

## Internet
- Iceweasel (iceweasel)
- HexChat IRC Client (hexchat)

### Text Editors
- Emacs (emacs)
- Vim (vim)
 
### Libraries
- NumPy (python-numpy)
- SciPy (python-scipy)
- MatPlotLib (python-matplotlib)
- OpenMPI (openmpi-bin openmpi-common libopenmpi-dev)

## Development
- gcc (gcc gfortran)
- IPython (ipython)
- pylint (pylint)
- git (git)
- nosetests (python-nose python-coverage python-rednose)

##Emacs packages

Most packages are downloaded through MELPA

###Appearance
- [Moe theme](https://github.com/kuanyui/moe-theme.el) (moe-theme)
- [Powerline](https://github.com/milkypostman/powerline) (powerline)
- [Org mode](https://github.com/sabof/org-bullets) (org-bullets org-autolist)

###Programming
- [Whitespace Cleanup](https://github.com/purcell/whitespace-cleanup-mode) (whitespace-cleanup-mode)
- [Fill Column Indicator](https://github.com/alpaker/Fill-Column-Indicator) (fill-column-indicator)
- [Flycheck](https://github.com/flycheck/flycheck) (flycheck)
- [Jedi](http://tkf.github.io/emacs-jedi/latest/) (jedi)
- [Markdown](https://github.com/auto-complete/auto-complete) (markdown-mode)
- [AUCTeX](https://www.gnu.org/software/auctex/) (auctex)

##Emacs-wise
- [Emacs Startup Profiler](https://github.com/jschaf/esup) (esup)
