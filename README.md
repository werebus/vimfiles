This repo is our baseline `~/.vim/` directory.  It uses [Pathogen][path]
and [git submodules][gitsm] to manage plugins.  Many of the configurations
used in here are inspired by [Janus][janus].

Installation
============
```bash
$ curl -Lo- http://git.io/Ye0UAg | bash
```

Or, feel free to clone it yourself

```bash
$ git clone --recursive https://github.com/umasstransit/vimfiles.git ~/.vim
```

and link in or source the `vimrc` and `gvimrc` files as you like.

Features
========
Oh so many plugins, here's a quick, and not quite complete, list.

*Note: below, when we refer to "`leader`", we're referring to the vim
special key.  By default, that's a backslash, but you can remap it to
some other key*

*   [Vim-ack][ack]

    Used to search through a project directory.  You can you can use `:Ack`,
    or, for your convenience, it's mapped to `<Leader>f`.  This plugin requires
    the ack program.  Install it with homebrew, apt-get, or whatever.

*   [Buffergator][buffg]

    Mapped to `<Leader>b`, this plugin gives you a list on the left of all
    of your currently open [buffers][buff]

*   [Conque-term][conque]

    Launches a terminal (or really any shell) in the current window.  For
    your convenience, there is a custon function, `StartTerm()` that will
    launch a login version of your default shell.  You could map it to a
    keystroke if you use it often.

*   [Fugitive][fugitive]

    Awesome git integration.

*   [Gist][gist]

*   [Gundo][gundo]

    Mapped to `<Leader>u`, this plugin will show you a nifty graphical
    representation of your undo tree.

*   [Indent-object][indent]

*   [NERDcommenter][nc]

    Tons of comment commands mapped to `<Leader>c<something>` (also in the
    plugin -> comment menu)

*   [NERDTree][nt]

    Mapped to `<Leader>n`, and also set to auto-appear when you call vim or
    mvim on a directory, this is a nice project tree type display

*   [Snipmate][snipmate] and the [Snipmate Snippets][snippets]

*   [Supertab][st] tab-completion (`:h supertab`)

*   [Surround][surround]

    This plugin contains all sorts of commands for wrapping chunks of text
    in parentheses, etc.

*   [Syntastic][syntastic] synax checker

*   [Tabular][tabular]

    This plugin is for making your text line up.  Maybe type `:Tab` and see
    what happens.

*   [Tagbar][tagbar]

    Mapped to `<Leader>tb`, shows a list of tags (ie functions, variables,
    etc) for the current file.  This plugin requires the exuberant variety
    of [ctags][ctags] -- install it with homebrew or apt-get.

*   [Zoomwin][zoom]

    Mapped to `<Leader><Leader>`, zooms into the current window, making it
    full-screen.

Customization
=============
Before and After Files
----------------------
You can use the `~/.vimrc.before`, `~/.gvimrc.before`, `~/.vimrc.after` or
`~/.gvimrc.after` files to add your own customizations.  The "before" files
are good for things like setting the leader or disabling plugins (see
below), the "after" files are good for overriding settings that we set
for you.

Disabling Pathogen plugins
--------------------------
Put something like this in your `~/.vimrc.before` file:

```viml
let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'someplugin')
```

Adding Pathogen plugins
-----------------------
We'll look in `~/.bundle` for pathogen bundles as well, so feel free to
add some in there.

And of course...
----------------
You're always welcome to fork it.

Todo
====
Both [Command-T][commt] and [Hammer][hammer] are quite popular in the
Vim/Ruby world, and I would like to include them, but the install
process is a bit tougher than your average vim plugin.

[path]:       https://github.com/tpope/vim-pathogen
[gitsm]:      http://book.git-scm.com/5_submodules.html
[janus]:      https://github.com/carlhuda/janus
[ack]:        https://github.com/mileszs/ack.vim
[align]:      http://www.vim.org/scripts/script.php?script_id=294
[buffg]:      https://github.com/jeetsukumaran/vim-buffergator
[buff]:       http://vim.wikia.com/wiki/Vim_buffer_FAQ
[conque]:     http://code.google.com/p/conque/
[fugitive]:   https://github.com/tpope/vim-fugitive
[gist]:       https://github.com/mattn/gist-vim
[gundo]:      https://github.com/sjl/gundo.vim
[indent]:     http://www.vim.org/scripts/script.php?script_id=3037
[nc]:         https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt
[nt]:         https://github.com/scrooloose/nerdtree
[snipmate]:   https://github.com/garbas/vim-snipmate
[snippets]:   https://github.com/honza/snipmate-snippets
[st]:         http://www.vim.org/scripts/script.php?script_id=1643
[surround]:   https://github.com/tpope/vim-surround
[syntastic]:  https://github.com/scrooloose/syntastic
[tabular]:    http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
[tagbar]:     http://majutsushi.github.com/tagbar/
[ctags]:      http://ctags.sourceforge.net/
[zoom]:       http://www.vim.org/scripts/script.php?script_id=508
[commt]:      https://wincent.com/products/command-t
[hammer]:     https://github.com/robgleeson/hammer.vim
