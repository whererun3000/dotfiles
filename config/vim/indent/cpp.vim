setlocal noexpandtab

setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2

if executable('clang-format')
	setlocal equalprg=clang-format\ --style=file
endif
