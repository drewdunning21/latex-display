local function displayPdf()
    local dir = vim.fn.expand('%:h')
    local fileName = vim.fn.expand('%:t:r')
    vim.api.nvim_command('tabnew')
    vim.api.nvim_command('term')
    vim.api.nvim_command('call nvim_paste("cd '.. dir..'\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("pdflatex '.. fileName .. '.tex\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("rm *.log *.aux\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("evince '.. fileName .. '.pdf\n", 1 ,-1)')
    vim.api.nvim_command('tabprev')
end

return {
    displayPdf = displayPdf
}
