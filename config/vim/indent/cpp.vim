setlocal noexpandtab

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

if executable('clang-format')
<<<<<<< HEAD
	setlocal equalprg=clang-format\ --style=file
=======
	setlocal equalprg=clang-format\ --style=Google
>>>>>>> 3685dac (vim)
endif
