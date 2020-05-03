let g:coc_explorer_global_presets = {
\   '.nvim': {
\      'root-uri': '~/.config/nvim',
\   },
\   'tasks': {
\      'root-uri': '~/.thinkvim.d/tasks',
\      'position': 'floating',
\   },
\   'Blog': {
\      'root-uri': '~/jerling.github.io/content/post',
\      'position': 'floating',
\   },
\ }

" 设置主题颜色
colorscheme dracula

" 自定义快捷键
" 增加退出插入模式快捷键
inoremap jk <ESC>

" 文件相关快捷键
nnoremap <Leader>fs :w<CR>
nnoremap <Leader>fS :wa<CR>
nnoremap <Leader>sa ggVG

" 博客相关配置
nnoremap <Leader>bo :CocCommand explorer --preset Blog<CR>
nnoremap <Leader>bs :AsyncTask blog-server<CR>
nnoremap <Leader>bk :AsyncStop!<CR>
nnoremap <Leader>bp :AsyncTask blog-deploy<CR>
nnoremap <space>oe :CocList explPresets<CR>

" 任务相关配置
nnoremap <Leader>ta :AsyncTaskList<CR>
nnoremap <Leader>tl :CocList tasks<CR>

" coc应用商店
nnoremap <Leader>cm :CocList marketplace<CR>


" register to which key
let g:which_key_map.f.s = "Save current buffer"
let g:which_key_map.f.S = "Save all buffers"
let g:which_key_map.o.e = "Open explorer preset list"
let g:which_key_map.b.o = "Open Blog post"
let g:which_key_map.b.s = "Start hugo server"
let g:which_key_map.b.k = "Kill hugo server"
let g:which_key_map.b.p = "hugo deploy"
let g:which_key_map.s.a = "Select buffer all"
