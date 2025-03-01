local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end
local imap = function(keys, func, desc)
    vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
end
local vmap = function(keys, func, desc)
    vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
end
return { n = nmap, i = imap, v = vmap }
