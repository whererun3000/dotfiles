function! formatting#FormatFile()
	if &equalprg != ''
		let l:pos = getcurpos()
		execute "normal! gg=G"
		call setpos('.', l:pos)
	endif
endfunction
