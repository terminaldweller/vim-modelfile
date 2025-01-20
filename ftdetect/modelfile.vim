au BufNewFile,BufRead modelfile Modelfile set filetype=modelfile
au FileType modelfile setlocal commentstring=#\ %s
