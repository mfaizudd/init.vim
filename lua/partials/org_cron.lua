-- ~/.config/nvim/lua/partials/org_cron.lua

local orgmode = vim.fn.stdpath('data') .. '/lazy/orgmode'
vim.opt.runtimepath:append(orgmode)

-- Run the orgmode cron
require('orgmode').cron({
    cron_enabled = true,
    org_agenda_files = '~/orgfiles/*',
    org_default_notes_file = '~/orgfiles/notes.org',
    deadline_reminder = true,
    scheduled_reminder = true,
    notifications = {
        reminder_time = { 0, 5, 10 },
    },
    cron_notifier = function(tasks)
        for _, task in ipairs(tasks) do
            local title = string.format('%s (%s)', task.category, task.humanized_duration)
            local subtitle = string.format('%s %s %s', string.rep('*', task.level), task.todo, task.title)
            local date = string.format('%s: %s', task.type, task.time:to_string())

            -- Linux
            if vim.fn.executable('notify-send') == 1 then
                vim.system({
                    'notify-send',
                    '--icon=/home/bandeng/.local/share/nvim/lazy/orgmode/assets/orgmode_nvim.png',
                    '--app-name=orgmode',
                    title,
                    string.format('%s\n%s', subtitle, date),
                })
            end
        end
    end
})
