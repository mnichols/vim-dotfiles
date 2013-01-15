## My .vim files

Using pathogen plugin along with git submodules. 

### Resources

* http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/ 
* http://www.brankovukelic.com/post/2091037293/turn-vim-into-powerful-javascript-editor


### Installing submodule (pathogen)

```bash

git submodule add {repo_url} bundle/{repo_name}
git add .
git commit -m 'install {repo_name} as submod'

```


### Windows setup

--> http://stackoverflow.com/a/7643722/331035

```bash

cd "%UserProfile%"
rmdir vimfiles /S /Q
git clone http://github.com/mnichols/vim-dotfiles.git vimfiles
del _vimrc
mklink _vimrc vimfiles\vimrc
cd vimfiles
git submodule init
git submodule update

```
