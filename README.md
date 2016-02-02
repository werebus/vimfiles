This repo is our baseline `~/.vim/` directory.  It uses [Pathogen][path]
and [git submodules][gitsm] to manage plugins.  Many of the configurations
used in here are inspired by [Janus][janus].

Installation
============
```bash
$ curl -Lo- https://git.io/vgUw4 | bash
```

_or_

```bash
$ wget -O- https://git.io/vgUw4 | bash
```

Or, feel free to clone it yourself

```bash
$ git clone --recursive https://github.com/umts/vimfiles.git ~/.vim
```

and sym-link to or source the `vimrc` and `gvimrc` files as you like.

Features
========
Oh so many plugins, here's a quick, and not quite complete, list.

*Note: below, when we refer to "`<Leader>`", we're referring to the vim
special key.  By default, that's a backslash, but you can remap it to
some other key*

*   [Vim-ack][ack]

    Used to search through a project directory.  You can you can use `:Ack`,
    or, for your convenience, it's mapped to `<Leader>f`.  This plugin requires
    the ack program.  Install it with homebrew, apt-get, or whatever.

*   [Buffergator][buffg]

    Mapped to `<Leader>b`, this plugin gives you a list on the left of all
    of your currently open [buffers][buff]

*   [ctrl-P][ctrlp]

    Fuzzy find in project, beffers, or most-used files.  Press `<c-p>`
    to get started.

*   [Fugitive][fugitive]

    Awesome git integration.

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

*   [Sessionman][sessman]

    Allows the saving and restoring of sessions.  It adds the options to
    the "File" menu, but there are also normal-mode commands.

*   [Snipmate][snipmate] and the [Snipmate Snippets][snippets]

*   [Supertab][st] tab-completion (`:h supertab`)

*   [Surround][surround]

    This plugin contains all sorts of commands for wrapping chunks of text
    in parentheses, etc.

*   [Syntastic][syntastic] synax checker

*   [Tabular][tabular]

    This plugin is for making your text line up.  Maybe type `:Tab` and see
    what happens.

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
call add(g:pathogen_disabled, 'someplugin')
```

Adding Pathogen plugins
-----------------------
We'll look in `~/.bundle` for pathogen bundles as well, so feel free to
add some in there.

And of course...
----------------
You're always welcome to fork it.

Credits
=======
The majority of the credit here goes to [Janus][janus].  The initial
inspiration was the old Rakefile-style Janus, but the git submodule
tachnique is borrowed from the new Janus.

Scrooloose's [vimfiles][slvf] repo alos provided some hints on usefull
plugins.

Steve Francia's [Vim distribution][spf-13] also provided some nice tips
for the `/.vimrc` file.

[path]:       https://github.com/tpope/vim-pathogen
[gitsm]:      http://book.git-scm.com/5_submodules.html
[janus]:      https://github.com/carlhuda/janus
[ack]:        https://github.com/mileszs/ack.vim
[align]:      http://www.vim.org/scripts/script.php?script_id=294
[buffg]:      https://github.com/jeetsukumaran/vim-buffergator
[buff]:       http://vim.wikia.com/wiki/Vim_buffer_FAQ
[ctrlp]:      https://github.com/kien/ctrlp.vim
[fugitive]:   https://github.com/tpope/vim-fugitive
[gundo]:      https://github.com/sjl/gundo.vim
[indent]:     http://www.vim.org/scripts/script.php?script_id=3037
[nc]:         https://github.com/scrooloose/nerdcommenter/blob/master/doc/NERD_commenter.txt
[nt]:         https://github.com/scrooloose/nerdtree
[sessman]:    https://github.com/vim-scripts/sessionman.vim
[snipmate]:   https://github.com/garbas/vim-snipmate
[snippets]:   https://github.com/scrooloose/snipmate-snippets
[st]:         http://www.vim.org/scripts/script.php?script_id=1643
[surround]:   https://github.com/tpope/vim-surround
[syntastic]:  https://github.com/scrooloose/syntastic
[tabular]:    http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
[zoom]:       http://www.vim.org/scripts/script.php?script_id=508
[slvf]:       https://github.com/scrooloose/vimfiles
[spf-13]:     https://github.com/spf13/spf13-vim
