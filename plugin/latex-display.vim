if !exists("g:default_pdf_viewer")
    let g:default_pdf_viewer = 'evince'
endif
if !exists("g:display_on_edit")
    let g:display_on_edit = 1
endif

fun! LatexDisplay()
    lua for k in pairs(package.loaded) do if k:match("^latex%-display") then package.loaded[k] = nil end end
    lua require("latex-display").displayPdf()
endfun

nmap dsp :call LatexDisplay()<CR>

augroup LatexDisplay
    autocmd!
    if g:display_on_edit
        " autocmd BufWrite *.tex :lua require("latex-display").onSave()
    endif
augroup END
