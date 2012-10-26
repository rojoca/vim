## Vim config 

### Install

To install clone the repo in your home directory:

    $ cd ~/
    $ git clone [repo_url] vim

Next you will need to update the plugins which are git submodules:

    $ cd vim
    $ git submodule init
    $ git submodule update

Also you need to create a directory for vim to save backups of files you work on:

    $ mkdir sessions

Finally, set up symlinks so vim can pick up the config:

    $ cd ~/
    $ ln -s ~/vim ~/.vim
    $ ln -s ~/vim/vimrc .vimrc

Now when you open vim you should be good to go.

### Tags

You may want to use tags to aid with completion. If you're on linux you'll want to install exuberent ctags:

    $ sudo apt-get install exuberant-ctags

If you're on a mac you will need to install ctags with macports as the version that ships with mac is not compatible:

    $ sudo port install ctags

This will install in /opt/local/bin/ctags

Once installed you can use the following to create a php tags file relative to the directory in which you run the command.

    $ /opt/local/bin/ctags -f ./tags -h ".php" -R --exclude="\.svn" --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP="/abstract class ([^ ]*)/\1/c/" --regex-PHP="/interface ([^ ]*)/\1/c/" --regex-PHP="/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/"

Which will create a file called tags in the current directory. You can get vim to use this tags file with:

    :set tags=/path/to/tags