au BufNewFile,BufRead Modelfile\|modelfile set filetype=modelfile
au FileType modelfile setlocal commentstring=#\ %s
