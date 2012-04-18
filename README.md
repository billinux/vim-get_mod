# billinux's modular Vim configuration

Unlike most Vim configurations you find on the Internet, this one is modular:
*not* a single giant `vimrc` file!  May it help you journey the lands of Vim.

## Overview

Branches

* The _master_ branch is a bare bones template for anyone to start with.

* The _config_ branch adds my personal configuration of standard Vim.

* The _bundle_ branch adds Vim scripts (bundles) and their configuration.

Configuration

* `config.vim` activates your bundles and then loads your Vim configuration.

* `config/**/*.vim` is your Vim configuration, organized into files by topic.

* `config/bundle/**/*.vim` is your bundle configuration; one file per bundle.

Bundles

* `**/*.get` specify the URLs of Git repositories to clone for your bundles.

* `bundle/*/` and `ftbundle/*/*/` are your bundles, according to [Unbundle].

## Prerequisites

* [Vim](http://www.vim.org/) 7.3 or newer

* [Git](http://git-scm.com/) 1.5 or newer

* [POSIX sh](http://pubs.opengroup.org/onlinepubs/009695399/utilities/sh.html)ell

[Unbundle]: https://github.com/sunaku/vim-unbundle

## Installation

Backup your configuration:

    mv ~/.vim ~/.vim.bak
    mv ~/.vimrc ~/.vimrc.bak

Install this configuration:

    git clone git://github.com/billinux/vim-get.git ~/.vim
    ln -s ~/.vim/config.vim ~/.vimrc

Select a Git branch to use:

    cd ~/.vim
    git checkout master  # bare bones
    git checkout config  # bare bones + my config
    git checkout bundle  # bare bones + my config + my bundles

Clone bundles from `*.get` files:

    cd ~/.vim
    sh bundle.sh

## Upgrading

Upgrade copy of this configuration:

    cd ~/.vim
    sh rebase.sh

Upgrade bundles from `*.get` files:

    cd ~/.vim
    sh bundle.sh

Do all this periodically via crontab(1):

    @daily cd ~/.vim && sh rebase.sh && sh bundle.sh

