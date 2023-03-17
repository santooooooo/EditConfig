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
call vundle#begin()
Plugin 'w0rp/ale'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
call vundle#end()
```

2. reactプロジェクト作成後に以下のコマンドを実行
```terminal
npm install --save react-scripts@latest
npm install eslint --save-dev
npm install prettier
```

**参考資料**

https://github.com/dense-analysis/ale

https://rudra.dev/posts/setting-up-vim-for-react

https://github.com/dense-analysis/ale/issues/887

https://betterprogramming.pub/upgrade-create-react-app-based-projects-to-version-4-cra-4-d7962aee11a6


## informations for ALE(Composerを使用しないでPHPのフォーマットを使用する場合)
1. ALEをVundleでインストール
```vim
call vundle#begin()
Plugin 'w0rp/ale'
call vundle#end()
```

2. php-cs-fixerをインストール
```terminal
curl -L https://cs.symfony.com/download/php-cs-fixer-v3.phar -o php-cs-fixer
sudo chmod a+x php-cs-fixer
sudo mv php-cs-fixer /usr/local/bin/php-cs-fixer
```

3. 設定の変更
```vim
let g:ale_php_php_cs_fixer_executable='/usr/local/bin/php-cs-fixer'
let g:ale_fixers = {'php': ['php_cs_fixer']}
let g:ale_fix_on_save = 1
```

**参考資料**

https://shiro-secret-base.com/?p=1095
