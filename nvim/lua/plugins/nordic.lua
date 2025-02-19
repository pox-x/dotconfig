return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local status, nordic = pcall(require, "nordic")
    if not status then
      print("nordic is not installed")
    else
      print("nordic is installed")
      local stat, n_palette = pcall(require, "nordic.colors")
      local stt, n_options = pcall(require, "nordic.config")
      if not stat and not stt then
        print("tokyonight and nordic color is not, palette can't be used")
      else
        print("tokyonight and noridc color is set can be palette used")
        nordic.setup({
          on_palette = function(palette)
            return palette
          end,
          options = {
            theme = "nordic",
          },
          transparent_bg = true,
          italic_comment = true,
          ts_context = {
            dark_background = true,
          },
          bold_keywords = true,
          override = {
            -- VertSplit = {
            WinSeparator = {
              -- fg = n_palette.gray1,
              fg = "#555555",
            },
            LineNr = {
              -- fg = "#404040",
              fg = "#cccccc",
            },
            Cursor = {
              fg = "#f92838",
            },
            TermCursor = {
              fg = "#f92838",
            },
            TermCursorNC = {
              fg = "#f92838",
            },
          },
          --[[
            Function = {
              fg = "#f9f9f3",
            },
            Delimiter = {
              fg = n_palette.blue2,
              -- fg = "#f29899",
            },
            Variable = {
              fg = "#f82828",
              -- fg = "#d8d892",
              -- link = "Function",
            },
            Constant = {
              -- link = "Variable",
              fg = "#f2b8d9",
            },
            Character = {
              -- link = "Variable",
              bg = "#404040",
            },
            String = {
              -- link = "Function",
              fg = "#08f9b9",
            },
            Title = {
              link = "Function",
            },
            Type = {
              fg = "#89d9e2",
              -- link = "Function",
            },
            Include = {
              link = "Function",
              -- fg = n_palette.blue1,
            },
            Macro = {
              link = "Function",
            },
            Keyword = {
              link = "Function",
              -- fg = "#ff7da3",
            },
            CodeBlock = {
              link = "Function",
            },
            Field = {
              link = "Keyword",
            },
            CursorLine = {
              -- link = "Type",
              bg = n_palette.none,
              -- bg = "#2a2a2a",
            },
            CursorLineNr = {
              fg = "#f92838",
              -- fg = "#f9f8f8",
            },
            lCursor = {
              link = "Type",
              -- bg = n_palette.blue0,
            },
            TabeLine = {
              link = "Type",
            },
            Statement = {
              link = "Keyword",
            },
            Label = {
              link = "Keyword",
            },
            Namespace = {
              link = "Keyword",
            },
            Comment = {
              -- fg = n_palette.gray2,
              fg = n_palette.gray0,
            },
            Cursor = {
              link = "String",
            },
            Visual = {
              link = "Type",
            },
            WinBar = {
              link = "Type",
            },
          },
      ]]
          --
        })
      end
    end

    vim.cmd.colorscheme("nordic")
  end,
}
