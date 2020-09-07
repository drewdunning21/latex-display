local function displayPdf()
    local dir = vim.fn.expand('%:h')
    local fileName = vim.fn.expand('%:t:r')
    print(dir)
    print(fileName)
    -- os.execute('cd '.. dir .. ';pdflatex ' .. fileName .. '.tex')
    -- -- os.execute("sleep 5")
    -- os.execute('rm latex-display.log')
    -- os.execute('rm *.log')
    -- os.execute('rm *.aux')
    -- os.execute('evince ' .. name .. '.pdf')
    -- os.execute('rm *.pdf')
end

return {
    displayPdf = displayPdf
}
