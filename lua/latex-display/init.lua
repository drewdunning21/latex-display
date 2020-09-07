
local function displayPdf(viewer)
    local viewer = vim.g['default_pdf_viewer']
    local dir = vim.fn.expand('%:h')
    local fileName = vim.fn.expand('%:t:r')
    vim.api.nvim_command('tab new')
    -- local bufh = vim.api.nvim_create_buf(
    vim.api.nvim_command('term')
    vim.api.nvim_command('call nvim_paste("cd '.. dir..'\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("pdflatex '.. fileName .. '.tex\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("rm *.log *.aux\n", 1 ,-1)')
    vim.api.nvim_command('call nvim_paste("' .. viewer .. ' '.. fileName .. '.pdf\n", 1 ,-1)')
    vim.api.nvim_command('tabprev')
end

return {
    displayPdf = displayPdf
}
