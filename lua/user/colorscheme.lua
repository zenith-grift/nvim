-- alot is tokyonight specific 
local colorscheme = "tokyonight"
vim.g.tokyonight_style = "night"

if (vim.g.tokyonight_style == "day")
then
    vim.o.background = "light"
    vim.g.tokyonight_transparent = false
    vim.g.tokyonight_transparent_sidebar = false
else 
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_transparent_sidebar = true
    vim.o.background = "dark"
end

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

