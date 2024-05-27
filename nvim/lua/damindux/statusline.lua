local modes = {
  ["n"] = "NORMAL",
  ["no"] = "NORMAL",
  ["v"] = "VISUAL",
  ["V"] = "VISUAL LINE",
  [""] = "VISUAL BLOCK",
  ["s"] = "SELECT",
  ["S"] = "SELECT LINE",
  [""] = "SELECT BLOCK",
  ["i"] = "INSERT",
  ["ic"] = "INSERT",
  ["R"] = "REPLACE",
  ["Rv"] = "VISUAL REPLACE",
  ["c"] = "COMMAND",
  ["cv"] = "VIM EX",
  ["ce"] = "EX",
  ["r"] = "PROMPT",
  ["rm"] = "MOAR",
  ["r?"] = "CONFIRM",
  ["!"] = "SHELL",
  ["t"] = "TERMINAL",
}

local function capitalize(word)
    if word == nil then return nil end
    local firstLetter = string.sub(word, 1, 1)
    local rest = string.sub(word, 2)
    return string.upper(firstLetter) .. string.lower(rest)
end

local function mode()
  local current_mode = vim.api.nvim_get_mode().mode
    local mode_name = capitalize(modes[current_mode])
  return string.format(" %s ", mode_name)
end

local function update_mode_colors()
  local current_mode = vim.api.nvim_get_mode().mode
  local mode_color = "%#Statusline#"
  if current_mode == "n" then
      mode_color = "%#StatuslineNormal#"
  elseif current_mode == "i" or current_mode == "ic" then
      mode_color = "%#StatuslineInsert#"
  elseif current_mode == "v" or current_mode == "V" or current_mode == "" then
      mode_color = "%#StatuslineVisual#"
  elseif current_mode == "R" or current_mode == "r" then
      mode_color = "%#StatuslineReplace#"
  elseif current_mode == "c" then
      mode_color = "%#StatuslineCmdLine#"
  elseif current_mode == "t" then
      mode_color = "%#StatuslineTerminal#"
  end
  return mode_color
end

local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then
      return " "
  end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then
      return ""
  end
  return fname .. " "
end

local function lsp()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for k, level in pairs(levels) do
    count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local hints = ""
  local info = ""
  local space = " "

  if count["errors"] ~= 0 then
    errors = " %#LspDiagnosticsSignError# " .. count["errors"] .. space
  end
  if count["warnings"] ~= 0 then
    warnings = " %#LspDiagnosticsSignWarning# " .. count["warnings"] .. space
  end
  if count["hints"] ~= 0 then
    hints = " %#LspDiagnosticsSignHint# " .. count["hints"] .. space
  end
  if count["info"] ~= 0 then
    info = " %#LspDiagnosticsSignInformation# " .. count["info"] .. space
  end

  return errors .. warnings .. hints .. info
end

local function filetype()
    local file_type = capitalize(vim.bo.filetype)
    return string.format(" %s ", file_type)
end

local function lineinfo()
  if vim.bo.filetype == "alpha" then
    return ""
  end
  return " %P %l:%c "
end

local vcs = function()
  local space = " "
  local git_info = vim.b.gitsigns_status_dict
  if not git_info or git_info.head == "" then
    return ""
  end
  local added = git_info.added and (space .. "%#GitSignsAdd#+" .. git_info.added .. " ") or ""
  local changed = git_info.changed and (space .. "%#GitSignsChange#~" .. git_info.changed .. " ") or ""
  local removed = git_info.removed and (space .. "%#GitSignsDelete#-" .. git_info.removed .. " ") or ""
  if git_info.added == 0 then
    added = ""
  end
  if git_info.changed == 0 then
    changed = ""
  end
  if git_info.removed == 0 then
    removed = ""
  end
    return table.concat {
        added,
        changed,
        removed,
        " ",
        "%#GitSignsAdd# ",
        git_info.head,
        " %#GitSignsAdd#",
    }
end

Statusline = {}

Statusline.active = function()
    return table.concat {
        "%#Statusline#",
        update_mode_colors(),
        mode(),
        "%#Statusline#",
        filepath(),
        filename(),
        "%#Statusline#",
        "%=%#GitSignsAdd#",
        vcs(),
        lsp(),
        "%#Statusline#",
        filetype(),
        lineinfo(),
    }
end

function Statusline.inactive()
  return " %F"
end

function Statusline.short()
  return "%#StatusLineNC#   NvimTree"
end

vim.api.nvim_exec([[
  augroup Statusline
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.Statusline.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.Statusline.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.Statusline.short()
  augroup END
]], false)

