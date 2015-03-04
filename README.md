# dotvim

This contains my personal Vim configuration and plugins. The idea is to replace the .vim folder on any machine with this. This .vim folder also contains a vimrc file, which performs the function of the .vimrc file. Because Vim expects .vimrc in the home directory, you must create a .vimrc file that simply has the one line "runtime vimrc". Then the settings from /.vim/vimrc will kick in.

#### Pushing config to new machine:

Delete the existing .vim folder. Make sure you don't have anything important in there!
```
cd
git clone https://github.com/dressel/dotvim.git ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "runtime vimrc" > .vimrc
```
After this, enter vim and type the command
```
:PluginInstall
```

### Curstom Commands
I added a couple of custom commands for switching the tab setup.
This way I don't have to go into the .vimrc to switch.
These commands are:

`Tab4` Sets tab width to 4 spaces, but tabs are their own characters
`Tab2` Sets tab width to 2 spaces, and tabs are two spaces (not separate)

To use one of them, just call them like a standard command.
```
:Tab2
```
