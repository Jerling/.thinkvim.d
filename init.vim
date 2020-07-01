let g:coc_explorer_global_presets = {
\   '.nvim': {
\      'root-uri': '~/.config/nvim',
\   },
\   'tasks': {
\      'root-uri': '~/.thinkvim.d/tasks',
\      'position': 'floating',
\   },
\   'Blog': {
\      'root-uri': '~/blog/content/post',
\      'position': 'floating',
\   },
\   'snippets': {
\      'root-uri': '~/.thinkvim.d/vssnipts',
\      'position': 'floating',
\   },
\ }

call coc#add_extension('coc-marketplace', 'coc-todolist', 'coc-tasks', 'coc-snippets')
call coc#config('snippets',
	\{
	\	 'textmateSnippetsRoots': ["/home/jer/.thinkvim.d/vssnipts"]
	\})

call coc#config('languageserver', {
	\ 'ccls': {
	\   "command": "ccls",
	\   "trace.server": "verbose",
	\   "filetypes": ["c", "cpp", "objc", "objcpp"],
	\   "rootPatterns": [".ccls", ".git"],
	\   "initializationOptions": {
	\		"cache":{
	\					"directory": "/tmp/ccls",
  \ 		}
  \ 	}
	\ }
	\})

" 自定义快捷键
" 增加退出插入模式快捷键
inoremap jk <ESC>

" 文件相关快捷键
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fS :wa<CR>
nnoremap <Leader>sa ggVG
nnoremap <Leader>ft :set filetype<CR>

" 博客相关配置
nnoremap <Leader>bo :CocCommand explorer --preset Blog<CR>
nnoremap <Leader>bs :AsyncTask blog-server<CR>
nnoremap <Leader>bk :AsyncStop!<CR>
nnoremap <Leader>bp :AsyncTask blog-deploy<CR>
nnoremap <Leader>oe :CocList explPresets<CR>

" 任务相关配置
nnoremap <Leader>te :AsyncTaskEdit<CR>
nnoremap <Leader>tl :CocList tasks<CR>

" coc应用商店
nnoremap <Leader>cm :CocList marketplace<CR>

" emacs 绑定
nnoremap <C-x><C-x> :call QuitVim()<CR>
inoremap <C-x><C-c> <ESC>:call QuitVim()<CR>
inoremap <C-x><C-u> <ESC>:q!<CR>
inoremap <C-x>h			<ESC>ggVG
nnoremap <C-x><C-x> :call QuitVim()<CR>
nnoremap <C-x><C-c> :call QuitVim()<CR>
nnoremap <C-x><C-u> :q!<CR>
nnoremap <C-x>h			ggVG

" 不知道为啥，在 Arch Linux 上无法注册，先过滤掉吧
let s:dist=system(" cat /etc/issue | awk '{printf $1}'")
if !(s:dist == "Arch")
	" register to which key
	let g:which_key_map.f.s = "save current buffer"
	let g:which_key_map.f.S = "Save all buffers"
	let g:which_key_map.o.e = "Open explorer preset list"
	let g:which_key_map.b.o = "Open Blog post"
	let g:which_key_map.b.s = "Start hugo server"
	let g:which_key_map.b.k = "Kill hugo server"
	let g:which_key_map.b.p = "hugo deploy"
	let g:which_key_map.s.a = "Select buffer all"
endif
