local M = {}

function M.setup()
  local colors = {
    black = "#000000",
    gray1 = "#101010",
    gray2 = "#202020",
    gray3 = "#303030",
    white = "#999999",
    bright = "#dddddd",
    red = "#e85c41",
    green = "#A6C94a",
    blue = "#247cb3",
    yellow = "#ffff00",
  }

  local hightlights = {
    Normal = { fg = colors.white, },
    Type = { link = "Normal" },
    Special = { link = "Normal" },
    Constant = { link = "Normal" },
    Delimiter = { link = "Normal" },
    Operator = { link = "Normal" },
    Identifier = { link = "Normal" },
    String = { link = "Normal" },
    Function = { link = "Normal" },
    Keyword = { link = "Normal" },
    Statement = { link = "Normal" },
    PreProc = { link = "Normal" },
    Visual = { bg = colors.gray3 },
    DiagnosticError = { fg = colors.red, italic = true },
    DiagnosticUnderlineError = { link = "Normal" },
    DiagnosticHint = { fg = colors.green, italic = true },
    Diagnostic = { fg = colors.green, italic = true },
    LspInlayHint = { fg = colors.blue, italic = true },
    SnacksIndent = { fg = colors.gray1 },
    SnacksIndentScope = { fg = colors.gray3 },
    -- Treesitter
    ["@variable"] = { link = "Normal" },
    ["@lsp.typemod.function.declaration.rust"] = { fg = colors.bright, bold = true },
    ["@lsp.typemod.method.declaration.rust"] = { fg = colors.bright, bold = true },
    SnacksPickerDir = { fg = colors.bright },
    SnacksPickerFile = { fg = colors.bright },
    SnacksPickerDirectory = { fg = colors.bright },
    SnacksPickerPathIgnored = { fg = colors.white },
    SnacksPickerPathHidden = { fg = colors.white },
    Cursor = { bg = colors.yellow, fg = colors.black },
    CursorLine = { bg = "#505050" },
  }

  for group, opts in pairs(hightlights) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
