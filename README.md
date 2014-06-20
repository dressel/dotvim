# dotvim

This contains my personal Vim configuration and plugins. The idea is to replace the .vim folder on any machine with this. This .vim folder also contains a vimrc file, which performs the function of the .vimrc file. Because Vim expects .vimrc in the home directory, you must create a .vimrc file that simply has the one line "runtime vimrc". Then the settings from /.vim/vimrc will kick in.

#### Pushing config to new machine:

Delete the existing .vim folder. Make sure you don't have anything important in there!
```
cd
git clone git@github.com:dressel/dotvim.git .vim
echo "runtime vimrc" > .vimrc
```
#### Source

I learned this tip via:<br>
http://stackoverflow.com/questions/18197705/adding-your-vim-vimrc-to-github-aka-dot-files
