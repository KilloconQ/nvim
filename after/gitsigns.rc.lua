local status, gitsgns = pcall(require, "gitsigns")
if (not status) then return end

gitsigns.setup {}
