fun! LatexDisplay()
    " dont forget to remove this one....
    lua for k in pairs(package.loaded) do if k:match("^latex%-display") then package.loaded[k] = nil end end
    lua require("latex-display").displayPdf()
endfun

augroup LatexDisplay
    autocmd!
augroup END
