require('killoconq')

local has = vim.fn.has
local is_mac = has 'macunix'
local is_win = has 'win32'

if is_mac then
  require('killoconq.macos')
end
if is_win then
  require('killoconq.windows')
end
