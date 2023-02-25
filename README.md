# GitRepository for Vim and NeoVim
This is my setting of vim.

Look at these links to run vim collectly.

## plugin manager
https://github.com/VundleVim/Vundle.vim 

https://github.com/junegunn/vim-plug

## plugin tools
https://github.com/alvan/vim-closetag 

https://github.com/preservim/nerdtree 

https://github.com/posva/vim-vue

https://github.com/squizlabs/PHP_CodeSniffer

https://github.com/phpactor/phpactor

https://github.com/phpactor/ncm2-phpactor

https://github.com/prettier/vim-prettier

## informations for setting
https://vimawesome.com/plugin/vim-hug-neovim-rpc

https://teratail.com/questions/279373#reply-397753

https://qiita.com/Lovely_030_Dong/items/672e0e98a5de11923f34

https://github.com/neovim/pynvim

## informations for ALE(React)

**実行手順**
1. ALE、Syntax用ツールをVundleでインストール
```vim
Plugin 'w0rp/ale'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
```

2. npmでローカル内にeslint、prettierをインストール
```terminal
npm install eslint
npm init @eslint/config
npm install prettier
```

**参考資料**

https://github.com/dense-analysis/ale

https://rudra.dev/posts/setting-up-vim-for-react

https://github.com/dense-analysis/ale/issues/887

