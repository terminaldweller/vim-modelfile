au BufNewFile,BufRead *.modelfile set filetype=modelfile
au FileType modelfile setlocal commentstring=#\ %s
