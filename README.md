# My Nvim Config
This is my personal vim configuration, i'll be updating this constantly (i hope so). And i'm expecting to grow up in knowledge

## Steps:

### 1. Install nvim:
#### Windows:
- Install chocolately
- $ choco install nvim

### 2. Install plugin manager: [Plug](https://github.com/junegunn/vim-plug)

### 3. Create the nvim folder on AppData/Local/
Inside that folder create a 'plugged' folder and a 'init.vim' file

### 4. Use the init.vim file.
Copy the content of the 'init.vim' file on this repo and paste it on the 'init.vim' file created in a previous step

## Plugins:
- Movimiento instantaneo
  
  [easymotion](https://github.com/easymotion/vim-easymotion)

- Gestor de archivos (se activa con SPACE + nt)

  [nerdtree](https://github.com/preservim/nerdtree)

- Diseño barra de utilidades

  [vim-airline](https://github.com/vim-airline/vim-airline)

- Temas vim-airline

  [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
  
- git diff a un costado
  
  [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
  
- Just Emmet (se activa con CTRL + Y)
  
  [emmet-vim](https://github.com/mattn/emmet-vim)
  
- Indentacion automatica
  
  [indentLine](https://github.com/Yggdroot/indentLine)
  
- Autocompletado de comillas, llaves, etc

  [auto-pairs](https://github.com/jiangmiao/auto-pairs)
  
- Autocomentar una o varias lineas (se activa con CTRL + /)

  [vim-auto-comment](https://github.com/KarimElghamry/vim-auto-comment)
  
- Autocompletado de codigo (se activa con CTRL + J)

  [copilot.vim](https://github.com/github/copilot.vim)
  
- Autocompletado (con Tab se pasa entre sugerencias y con Enter se selecciona)

  [coc.nvim](https://github.com/neoclide/coc.nvim)


## Goals:
### Short Term Goals(ordered):
1. (DONE) ✔ Incorpore [GitHub Copilot](https://docs.github.com/en/copilot/getting-started-with-github-copilot/getting-started-with-github-copilot-in-neovim)

2. Fix the airline

3. Document all the init.vim file

### Long Term Goals:
- Find a new and final general theme
- Made an install.sh [---5%---]
- [Custom vim main page](https://github.com/mhinz/vim-startify)
