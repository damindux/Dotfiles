return {
    'tjdevries/cyclist.vim',
    config = function()
        local cyclistConfigs = {
            limited = {
                eol = '↲',
                tab = '» ',
                trail = '·',
                extends = '<',
                precedes = '>',
                conceal = '┊',
                nbsp = '␣',
            },
            busy = {
                eol = '↲',
                tab = '»·',
                space = '␣',
                trail = '-',
                extends = '☛',
                precedes = '☚',
                conceal = '┊',
                nbsp = '☠',
            },
        }
        local function applyCyclistConfig()
            for setName, setConfig in pairs(cyclistConfigs) do
                local vimscript = "cyclist#add_listchar_option_set('" .. setName .. "', {"
                for key, value in pairs(setConfig) do
                    vimscript = vimscript .. " '" .. key .. "': '" .. value .. "',"
                end
                vimscript = vimscript:sub(1, -2) -- Removes the last comma
                vimscript = vimscript .. " })"
                vim.cmd("call " .. vimscript)
            end
        end
        applyCyclistConfig()
    end,
}
