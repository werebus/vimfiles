This repo is our baseline `~/.vim/` directory.  It uses [Pathogen][1]
and [git submodules][2] to manage plugins.  Many of the configurations
used in here are inspired by [Janus][3].

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

[1]: https://github.com/tpope/vim-pathogen
[2]: http://book.git-scm.com/5_submodules.html
[3]: https://github.com/carlhuda/janus
