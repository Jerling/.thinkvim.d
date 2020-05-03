# ThinkVim 私有配置

## 安装
```sh
git clone --depth=1 https://github.com/hardcoreplayers/ThinkVim.git ~/.config/nvim
git clone https://github.com/Jerling/.thinkvim.d ~/.thinkvim.d
cd ~/.config/nvim
bash ./bin/install.sh
```

**个人相关的配置**
```sh
# for coc
cp ~/.thinkvim.d/coc/coc-settings.json ~/.config/nvim

# for coc-todolist
mkdir ~/.config/coc/extensions/coc-todolist-data
cp ~/.thinkvim.d/todo-list/config.json ~/.config/coc/extensions/coc-todolist-data
```

## 增加的插件
vim:
	- [AsyncTask](https://github.com/skywind3000/asynctasks.vim)
	- [AsyncRun](https://github.com/skywind3000/asyncrun.vim)

coc:
	- coc-marketplace
	- coc-explorer
	- coc-snippets
	- coc-todolist
	- coc-tasks
