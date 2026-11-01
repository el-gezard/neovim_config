local nvim_zen = vim.api.nvim_create_augroup("nvim_zen", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = nvim_zen,
	desc = "Highlight yanked text",
	callback = function()
		vim.hl.on_yank({ timeout = 120 })
	end,
})

vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })
