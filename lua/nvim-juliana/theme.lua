--- Generates a table of Highlight groups and their respective definitions
---@private
---@param C Colors
---@return {[1]: string, [2]: table<string, any>? }[]
return function(C)
  local default             = { fg = C.fg2, bg = C.bg2 }
  local floatingWindow      = { bg = C.bg3 }
  local muted               = { fg = C.fg3 }
  local selection           = { bg = C.selection_bg }
  local text_faded          = { fg = C.fg4 }
  local text_red            = { fg = C.red2 }
  local text_yellow         = { fg = C.yellow2 }
  local text_yellow_italic  = { fg = C.yellow2, italic = true }
  local text_green          = { fg = C.green }
  local text_cyan           = { fg = C.cyan2 }
  local text_magenta        = { fg = C.magenta }
  local text_selected       = { bg = C.bg1 }
  local text_emphasis       = { fg = C.fg1 }
  local text_orange         = { fg = C.orange }
  local text_magenta_italic = { fg = C.magenta, italic = true }
  local ui_title            = { fg = C.fg2, bold = true }
  local ui_select           = { bg = C.bg1, fg = C.fg1 }
  local ui_thumb            = { bg = C.bg3, fg = C.bg1 }
  local current_line        = { fg = C.fg1, bg = C.selection_bg }
  local search              = { fg = C.bg3, bg = C.yellow1, bold = true }
  local text_blue           = { fg = C.blue2 }
  return {
    { 'Normal',                                default },
    { 'Visual',                                selection },
    { 'NormalFloat',                           floatingWindow },
    { 'FloatBorder',                           text_faded },
    { 'Pmenu',                                 floatingWindow },
    { 'PmenuSel',                              ui_select },
    { 'PmenuSbar',                             ui_thumb },
    { 'PmenuThumb',                            text_selected },
    { 'NonText',                               text_faded },
    { 'Whitespace',                            text_faded },
    { 'Conceal',                               text_faded },
    { 'WinSeparator',                          text_faded },
    { 'VertSplit',                             text_faded },
    { 'CursorLineNr',                          current_line },
    { 'CursorLine',                            selection },
    { 'CursorColumn',                          selection },
    { 'ColorColumn',                           selection },
    { 'SignColumn',                            default },
    { 'CursorLineFold',                        default },
    { 'LineNr',                                current_line },
    { 'LineNrAbove',                           muted },
    { 'LineNrBelow',                           muted },
    { 'DiffAdd',                               { fg = 'NONE', bg = C.diff_add } },
    { 'DiffChange',                            { fg = 'NONE', bg = C.diff_change } },
    { 'DiffDelete',                            { fg = 'NONE', bg = C.diff_remove } },
    { 'DiffText',                              { fg = 'NONE', bg = C.diff_text } },
    { 'Directory',                             text_cyan },
    { 'EndOfBuffer',                           text_faded },
    { 'Error',                                 text_orange },
    { 'ErrorMsg',                              text_red },
    { 'Folded',                                muted },
    { 'FoldColumn',                            muted },
    { 'ModeMsg',                               { fg = C.fg2 } },
    { 'MoreMsg',                               text_emphasis },
    { 'Question',                              { fg = C.magenta } },
    { 'Search',                                search },
    { 'IncSearch',                             search },
    { 'Substitute',                            search },
    { 'SpellBad',                              { sp = C.red2, undercurl = true } },
    { 'SpellCap',                              { sp = C.yellow2, undercurl = true } },
    { 'SpellLocal',                            { sp = C.cyan2, undercurl = true } },
    { 'SpellRare',                             { sp = C.magenta, undercurl = true } },
    { 'StatusLine',                            { fg = C.fg2, bg = C.bg1 } },
    { 'StatusLineNC',                          { fg = C.fg2, bg = C.bg3 } },
    { 'TabLine',                               { fg = C.fg2, bg = C.bg1 } },
    { 'TabLineFill',                           { fg = C.fg3, bg = C.bg1 } },
    { 'TabLineSel',                            default },
    { 'WarningMsg',                            { fg = C.yellow3, bg = C.bg3 } },
    { 'WildMenu',                              floatingWindow },
    { 'MatchParen',                            { bold = true } },
    { 'DiagnosticError',                       { fg = C.red1, bg = 'NONE' } },
    { 'DiagnosticSignError',                   { fg = C.red1, bold = true, bg = 'NONE' } },
    { 'DiagnosticUnderlineError',              {} },
    { 'DiagnosticVirtualTextError',            { fg = C.red1, bg = 'NONE' } },
    { 'DiagnosticHint',                        { fg = C.cyan1, bg = 'NONE' } },
    { 'DiagnosticSignHint',                    { fg = C.cyan1, bold = true, bg = 'NONE' } },
    { 'DiagnosticUnderlineHint',               {} },
    { 'DiagnosticVirtualTextHint',             { fg = C.cyan1, bg = 'NONE' } },
    { 'DiagnosticInfo',                        { fg = C.green, bg = 'NONE' } },
    { 'DiagnosticSignInfo',                    { fg = C.green, bold = true, bg = 'NONE' } },
    { 'DiagnosticUnderlineInfo',               {} },
    { 'DiagnosticVirtualTextInfo',             { fg = C.green, bg = 'NONE' } },
    { 'DiagnosticWarn',                        { fg = C.yellow1, bg = 'NONE' } },
    { 'DiagnosticSignWarn',                    { fg = C.yellow1, bold = true, bg = 'NONE' } },
    { 'DiagnosticUnderlineWarn',               {} },
    { 'DiagnosticVirtualTextWarn',             { fg = C.yellow1, bg = 'NONE' } },
    { 'Boolean',                               { fg = C.red2, italic = true } },
    { 'Character',                             text_green },
    { 'Comment',                               muted },
    { 'SpecialComment',                        muted },
    { 'Conditional',                           text_magenta_italic },
    { 'Constant',                              text_red },
    { 'Define',                                text_magenta_italic },
    { 'Delimiter',                             muted },
    { 'Float',                                 { fg = C.yellow1 } },
    { 'Function',                              text_magenta_italic },
    { 'Identifier',                            { fg = C.fg2 } },
    { 'Include',                               text_red },
    { 'Keyword',                               text_magenta_italic },
    { 'Label',                                 text_cyan },
    { 'Macro',                                 text_cyan },
    { 'Number',                                { fg = C.yellow1 } },
    { 'Operator',                              text_orange },
    { 'PreCondit',                             text_red },
    { 'PreProc',                               text_cyan },
    { 'Repeat',                                text_magenta_italic },
    { 'Special',                               text_cyan },
    { 'SpecialChar',                           text_cyan },
    { 'SpecialKey',                            text_cyan },
    { 'Statement',                             { fg = C.fg2 } },
    { 'StorageClass',                          text_red },
    { 'String',                                { fg = C.green, italic = true } },
    { 'Exception',                             text_magenta_italic },
    { 'Struct',                                text_red },
    { 'Structure',                             text_yellow },
    { 'Tag',                                   text_red },
    { 'Title',                                 ui_title },
    { 'Todo',                                  { fg = C.blue2, bold = true } },
    { 'Type',                                  text_yellow },
    { 'Typedef',                               text_yellow },
    { 'Underlined',                            { underdotted = true } },
    { '@boolean',                              { fg = C.red2, italic = true } },
    { '@character',                            text_cyan },
    { '@character.special',                    text_cyan },
    { '@comment',                              muted },
    { '@conditional',                          text_magenta_italic },
    { '@constant',                             text_emphasis },
    { '@constant.builtin',                     { fg = C.fg2, italic = true } },
    { '@constant.macro',                       text_magenta_italic },
    { '@constructor.javascript',               { fg = C.yellow2 } },
    { '@constructor.lua',                      text_emphasis },
    { '@constructor.typescript',               { fg = C.yellow2 } },
    { '@conditional.ternary.typescript',       text_orange },
    { '@enum',                                 { fg = C.yellow2 } },
    { '@exception.rust',                       text_blue },
    { '@field',                                { fg = C.blue1 } },
    { '@field.toml',                           text_red },
    { '@field.yaml',                           text_cyan },
    { '@float',                                { fg = C.yellow1 } },
    { '@function',                             text_cyan },
    { '@function.builtin',                     { fg = C.blue2, italic = true } },
    { '@function.call',                        text_blue },
    { '@function.css',                         text_blue },
    { '@function.macro',                       text_blue },
    { '@function.macro.commonlisp',            text_red },
    { '@include',                              text_magenta_italic },
    { '@interface',                            { fg = C.yellow2 } },
    { '@keyword',                              text_magenta_italic },
    { '@keyword.function',                     text_magenta_italic },
    { '@keyword.function.python',              { fg = C.red2, italic = true } },
    { '@keyword.operator',                     text_orange },
    { '@keyword.return',                       text_magenta_italic },
    { '@keyword.coroutine',                    text_red },
    { '@label',                                text_cyan },
    { '@label.json',                           text_cyan },
    { '@label.toml',                           text_cyan },
    { '@label.vim',                            { fg = C.blue1 } },
    { '@method',                               text_cyan },
    { '@method.call',                          text_blue },
    { '@namespace',                            { fg = C.yellow2 } },
    { '@number',                               { fg = C.yellow1 } },
    { '@number.bash',                          { fg = C.yellow2 } },
    { '@operator',                             text_orange },
    { '@parameter',                            { fg = C.fg2 } },
    { '@parameter.bash',                       { fg = C.fg2 } },
    { '@parameter.reference',                  { fg = C.fg2 } },
    { '@preproc',                              text_cyan },
    { '@property',                             { fg = C.blue1 } },
    { '@property.toml',                        text_cyan },
    { '@punctuation.delimiter',                text_cyan },
    { '@punctuation.bracket',                  { fg = C.fg2 } },
    { '@punctuation.delimiter.python',         text_emphasis },
    { '@punctuation.delimiter.yaml',           text_blue },
    { '@punctuation.special',                  text_cyan },
    { '@punctuation.special.markdown',         { fg = C.orange, bold = false } },
    { '@repeat',                               text_magenta_italic },
    { '@repeat.python',                        text_red },
    { '@storageclass',                         text_red },
    { '@storageclass.lifetime',                text_cyan },
    { '@string',                               { fg = C.green, italic = true } },
    { '@string.delimiter',                     text_cyan },
    { '@string.escape',                        text_cyan },
    { '@string.regex',                         text_cyan },
    { '@string.special',                       text_cyan },
    { '@symbol',                               text_cyan },
    { '@tag',                                  text_red },
    { '@tag.attribute',                        text_magenta },
    { '@tag.delimiter',                        text_cyan },
    { '@tag.delimiter.markdown',               text_blue },
    { '@tag.delimiter.markdown_inline',        text_blue },
    { '@tag.rust',                             text_cyan },
    { '@tag.rust.lua',                         text_cyan },
    { '@text',                                 { fg = C.text_fg } },
    { '@text.emphasis',                        { italic = true, bold = true } },
    { '@text.literal',                         { fg = C.green, italic = true } },
    { '@text.literal.markdown_inline',         { bg = C.bg1, fg = C.fg2 } },
    { '@text.reference',                       { fg = C.cyan2, underdotted = false } },
    { '@text.strong',                          { bold = true } },
    { '@text.title',                           ui_title },
    { '@text.underline',                       { underline = true } },
    { '@text.uri',                             { fg = C.blue2, underdotted = true } },
    { '@type',                                 { fg = C.yellow2 } },
    { '@type.builtin',                         { fg = C.blue2, italic = true } },
    { '@type.definition',                      { fg = C.yellow2 } },
    { '@type.qualifier',                       text_red },
    { '@variable',                             { fg = C.fg2 } },
    { '@variable.builtin',                     { fg = C.fg2, italic = true } },
    { '@variable.builtin.clojure',             { fg = C.fg2, italic = true } },
    { '@variable.builtin.javascript',          { fg = C.fg2, italic = true } },
    { 'gitCommitSelectedFile',                 { italic = true } },
    { 'gitCommitSummary',                      { bold = true } },
    { 'gitCommitTrailerToken',                 text_magenta_italic },
    { 'gitconfigVariable',                     { fg = C.blue1 } },
    { 'gitcommitFirstLine',                    { bold = true } },
    { 'justBody',                              { fg = C.fg2 } },
    { 'justInterpolationDelim',                text_blue },
    { 'justParameter',                         text_orange },
    { 'justAssignment',                        text_emphasis },
    { 'justBuiltInFunctions',                  { italic = true, fg = C.blue2 } },
    { 'justRecipeName',                        { fg = C.yellow3 } },
    { 'justFunction',                          text_cyan },
    { 'vimContinue',                           text_faded },
    { 'manSectionHeading',                     { fg = C.fg1, bold = true } },
    { 'healthHelp',                            { fg = C.yellow1 } },
    { 'healthSuccess',                         text_green },
    { 'markdownRule',                          text_red },
    { 'markdownLinkText',                      { fg = C.fg2 } },
    { 'markdownUrl',                           { fg = C.blue2, underline = true } },
    { 'markdownLinkDelimiter',                 text_cyan },
    { 'markdownH1Delimiter',                   { fg = C.orange, bold = false } },
    { 'markdownH2Delimiter',                   { fg = C.orange, bold = false } },
    { 'markdownCode',                          text_selected },
    { 'markdownCodeDelimiter',                 text_blue },
    { 'markdownListMarker',                    { fg = C.yellow1 } },
    { 'htmlTagName',                           text_red },
    { 'qfFileName',                            text_cyan },
    { 'qfLineNr',                              { bold = true } },
    { 'tmuxCommands',                          text_magenta_italic },
    { 'tmuxFlags',                             { fg = C.yellow2 } },
    { 'tmuxFormatString',                      text_cyan },
    { 'FennelStringDelimiter',                 text_cyan },
    { 'FennelParen',                           text_emphasis },
    { 'FennelSpecialForm',                     text_magenta_italic },
    { 'FennelKeyword',                         text_red },
    { 'luaFunc',                               text_blue },
    { 'luaTable',                              { fg = C.fg2 } },
    { 'luaStringDelimiter',                    text_blue },
    { 'helpHyperTextEntry',                    { fg = C.blue2, underdotted = true } },
    { 'helpSectionDelim',                      { fg = C.red2, bold = true } },
    { 'helpHyperTextJump',                     { fg = C.blue2, underdotted = true } },
    { 'helpHeader',                            { fg = C.fg2, bold = true } },
    { 'helpExample',                           text_green },
    { 'helpURL',                               { fg = C.blue2, underline = true } },
    { 'helpCommand',                           { bg = C.bg1, italic = true } },
    { 'rainbowcol1',                           text_magenta },
    { 'rainbowcol2',                           text_orange },
    { 'rainbowcol3',                           text_green },
    { 'rainbowcol4',                           text_red },
    { 'rainbowcol5',                           text_cyan },
    { 'rainbowcol6',                           { fg = C.yellow1 } },
    { 'rainbowcol7',                           { fg = C.yellow3 } },
    { 'IndentBlanklineChar',                   { fg = C.fg4, bg = 'NONE', nocombine = true } },
    { 'IndentBlanklineSpaceChar',              { fg = 'NONE', bg = 'NONE', nocombine = true } },
    { 'IndentBlanklineSpaceCharBlankline',     { fg = 'NONE', bg = 'NONE', nocombine = true } },
    { 'IndentBlanklineContextChar',            { fg = C.fg3, bg = 'NONE', nocombine = true } },
    { 'IndentBlanklineContextSpaceChar',       { fg = 'NONE', bg = 'NONE', nocombine = true } },
    { 'IndentBlanklineContextStart',           { fg = 'NONE', bg = 'NONE', sp = C.fg3, underdotted = true } },
    { 'CmpItemAbbrDeprecated',                 { strikethrough = true } },
    { 'CmpItemKindStruct',                     { fg = C.yellow2 } },
    { 'CmpItemKindFunction',                   text_blue },
    { 'CmpItemKindText',                       { fg = C.fg2 } },
    { 'CmpItemKindClass',                      { fg = C.yellow2 } },
    { 'CmpItemKindValue',                      text_orange },
    { 'CmpItemKindEnum',                       { fg = C.yellow2 } },
    { 'CmpItemKindInterface',                  { fg = C.yellow2 } },
    { 'CmpItemKindMethod',                     text_cyan },
    { 'CmpItemKindUnit',                       text_red },
    { 'CmpItemKindConstant',                   text_emphasis },
    { 'CmpItemKindField',                      text_blue },
    { 'CmpItemKindModule',                     { fg = C.yellow2 } },
    { 'CmpItemKindKeyword',                    text_magenta_italic },
    { 'CmpItemKindEnumMember',                 text_emphasis },
    { 'CmpItemKindProperty',                   text_blue },
    { 'CmpItemKindOperator',                   text_orange },
    { 'CmpItemKindReference',                  { fg = C.fg2 } },
    { 'CmpItemKindSnippet',                    text_emphasis },
    { 'CmpItemKindTypeParameter',              { fg = C.yellow2 } },
    { 'CmpItemKindVariable',                   { fg = C.fg2 } },
    { 'LeapMatch',                             { fg = C.bg3, bg = C.orange, bold = true } },
    { 'LeapLabelPrimary',                      { fg = C.bg3, bg = C.yellow2, bold = true } },
    { 'LeapLabelSecondary',                    { fg = C.bg3, bg = C.yellow3, bold = true } },
    { 'LeapLabelSelected',                     { fg = C.bg3, bg = C.yellow1, bold = true } },
    { 'LeapBackdrop',                          { fg = 'NONE', bg = C.bg3 } },
    { 'Sneak',                                 { fg = C.bg3, bg = C.yellow2, bold = true } },
    { 'SneakLabel',                            { fg = C.bg3, bg = C.yellow2, bold = true } },
    { 'GitSignsDelete',                        text_red },
    { 'GitSignsChange',                        { fg = C.yellow2 } },
    { 'GitSignsAdd',                           text_green },
    { 'packerHash',                            text_red },
    { 'packerString',                          text_green },
    { 'packerStatusSuccess',                   text_green },
    { 'LspReferenceText',                      { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' } },
    { 'LspReferenceRead',                      { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' } },
    { 'LspReferenceWrite',                     { underline = true, sp = C.fg3, bg = 'NONE', fg = 'NONE' } },
    { 'TelescopeBorder',                       text_faded },
    { 'TelescopeTitle',                        ui_title },
    { 'TelescopePromptCounter',                { fg = C.fg2 } },
    { 'TelescopeMatching',                     { bg = C.bg2 } },
    { 'TelescopeSelectionCaret',               { fg = C.fg2 } },
    { 'TelescopeSelection',                    text_selected },
    { 'FloatTitle',                            ui_title },
    { 'FocusedSymbol',                         text_selected },
    { 'TroubleIndent',                         { bg = C.bg2 } },
    { 'TroubleLocation',                       { bold = true } },
    { 'NvimTreeNormal',                        { fg = C.fg2, bg = C.bg3 } },
    { 'NvimTreeRootFolder',                    { fg = C.fg2 } },
    { 'NvimTreeIndentMarker',                  { fg = C.fg3 } },
    { 'NvimTreeOpenedFolderName',              { underdotted = true } },
    { 'NvimTreeOpenedFile',                    text_selected },
    { 'NvimTreeFolderName',                    { fg = C.fg2 } },
    { 'NvimTreeEmptyFolderName',               muted },
    { 'NvimTreeFolderIcon',                    muted },
    { 'NvimTreeExecFile',                      { fg = C.green, bold = true } },
    { 'NvimTreeFileDeleted',                   muted },
    { 'NvimTreeFileNew',                       { fg = C.bg3 } },
    { 'NvimTreeSpecialFile',                   { fg = C.fg2 } },
    { 'NvimTreeGitDirty',                      text_red },
    { 'NvimTreeGitStaged',                     text_green },
    { 'NvimTreeGitRenamed',                    { fg = C.yellow2 } },
    { 'NvimTreeGitDeleted',                    text_red },
    { 'NvimTreeSymlink',                       { fg = C.cyan2, bg = C.bg3 } },
    { 'NotifyERRORBorder',                     { fg = C.red1 } },
    { 'NotifyWARNBorder',                      { fg = C.yellow1 } },
    { 'NotifyINFOBorder',                      text_green },
    { 'NotifyDEBUGBorder',                     text_orange },
    { 'NotifyTRACEBorder',                     text_magenta },
    { 'NotifyERRORIcon',                       text_red },
    { 'NotifyWARNIcon',                        text_yellow },
    { 'NotifyINFOIcon',                        text_green },
    { 'NotifyDEBUGIcon',                       text_orange },
    { 'NotifyTRACEIcon',                       text_magenta },
    { 'NotifyERRORTitle',                      { fg = C.red1, bold = true } },
    { 'NotifyWARNTitle',                       { fg = C.yellow1, bold = true } },
    { 'NotifyINFOTitle',                       { fg = C.green, bold = true } },
    { 'NotifyDEBUGTitle',                      { fg = C.orange, bold = true } },
    { 'NotifyTRACETitle',                      { fg = C.magenta, bold = true } },
    { 'NotifyERRORBody',                       { fg = C.fg2 } },
    { 'NotifyWARNBody',                        { fg = C.fg2 } },
    { 'NotifyINFOBody',                        { fg = C.fg2 } },
    { 'NotifyDEBUGBody',                       { fg = C.fg2 } },
    { 'NotifyTRACEBody',                       { fg = C.fg2 } },
    { 'DevIconGitAttributes',                  text_cyan },
    { 'DevIconGitCommit',                      text_red },
    { 'DevIconGitConfig',                      text_cyan },
    { 'DevIconGitIgnore',                      text_red },
    { 'DevIconGitModules',                     text_cyan },
    { 'DevIconDropbox',                        text_blue },
    { 'DevIconToml',                           text_cyan },
    { 'DevIconYaml',                           text_cyan },
    { 'DevIconJson',                           { fg = C.yellow2 } },
    { 'DevIconYml',                            text_cyan },
    { 'DevIconMd',                             text_emphasis },
    { 'DevIconGo',                             text_blue },
    { 'DevIconTs',                             text_blue },
    { 'DevIconTsx',                            text_blue },
    { 'DevIconDsStore',                        muted },
    { 'DevIconDockerfile',                     text_blue },
    { 'DevIconScheme',                         text_emphasis },
    { '@lsp.type.type',                        text_yellow },
    { '@lsp.typemod.type.defaultLibrary',      { fg = C.blue2, italic = true } },
    { '@lsp.typemod.type.documentation',       text_yellow },
    { '@lsp.type.enum',                        text_yellow },
    { '@lsp.typemod.enum.defaultLibrary',      { fg = C.blue2, italic = true } },
    { '@lsp.type.interface',                   text_yellow },
    { '@lsp.typemod.interface.defaultLibrary', { fg = C.blue2, italic = true } },
    { '@lsp.type.class',                       text_yellow },
    { '@lsp.typemod.class.defaultLibrary',     text_yellow_italic },
    { '@lsp.type.struct',                      { fg = C.yellow2 } },
    { '@lsp.typemod.struct.defaultLibrary',    { fg = C.blue2, italic = true } },
    { '@lsp.type.macro',                       { fg = C.yellow2 } },
    { '@lsp.typemod.function.definition',      text_cyan },
    { '@lsp.type.function',                    { fg = C.blue2, nocombine = true } },
    { '@lsp.typemod.function.declaration',     text_cyan },
    { '@lsp.typemod.function.modification',    text_cyan },
    { '@lsp.typemod.function.defaultLibrary',  { italic = true } },
    { '@lsp.typemod.function.documentation',   text_blue },
    { '@lsp.type.method',                      text_cyan },
    { '@lsp.typemod.method.definition',        text_cyan },
    { '@lsp.type.property',                    { fg = C.blue1 } },
    { '@lsp.type.variable',                    { fg = C.fg2 } },
    { '@lsp.type.decorator',                   { fg = C.cyan2, bold = true } },
    { '@lsp.typemod.decorator.defaultLibrary', { fg = C.cyan2, bold = true, italic = true } },
    { '@lsp.type.namespace',                   { fg = C.yellow2 } },
    { '@lsp.typemod.namespace.defaultLibrary', { fg = C.yellow2, italic = true } },
    { '@lsp.type.parameter',                   { fg = C.fg2 } },
    { '@lsp.type.enumMember',                  { fg = C.blue1 } },
    { '@lsp.type.typeParameter',               { fg = C.yellow2 } },
    { '@lsp.mod.defaultLibrary',               { italic = true } },
    { '@lsp.mod.deprecated',                   { strikethrough = true } },
    { '@lsp.mod.declaration',                  {} },
    { '@lsp.typemod.variable.global.lua',      { fg = C.fg1, italic = true } },
    { 'FzfLuaNormal',                          default },
    { 'FzfLuaBorder',                          text_faded },
    { 'FzfLuaCursor',                          default },
    { 'FzfLuaSearch',                          search },
    { 'FzfLuaTitle',                           ui_title },
    { 'FzfLuaCursorLine',                      ui_select },
    { 'FzfLuaCursorLineNr',                    ui_select },
    { 'dosiniLabel',                           text_cyan },
    { 'dosiniHeader',                          text_red },
    { 'CopilotSuggestion',                     { bg = C.bg3, fg = C.fg3 } },
    { 'NoiceCursor',                           { fg = C.fg2 } },
    { 'CocCodeLens',                           { fg = C.fg3, bg = C.bg3 } },
    { 'CocDisabled',                           { fg = C.fg3, bg = C.bg3 } },
    { 'CocGitAddedSign',                       { fg = C.cyan1 } },
    { 'CocGitChangedSign',                     { fg = C.yellow1 } },
    { 'CocGitRemovedSign',                     { fg = C.red1 } },
    { 'CocGitTopRemovedSign',                  { fg = C.red1 } },
    { 'CocGitChangeRemovedSign',               text_red },
    { 'CocCursorRange',                        { fg = C.bg3, bg = C.yellow1, bold = true } },
    { 'CocSelectedRange',                      { fg = C.bg3, bg = C.yellow1, bold = true } },
    { 'CocListsDesc',                          muted },
    { 'CocFloatActive',                        { bg = C.bg1, fg = C.fg1, bold = false } },
    { 'CocFloatDividin',                       text_faded },
    { 'CocFloatSbar',                          ui_thumb },
    { 'CocFloatThumb',                         text_selected },
    { 'CocFadeOut',                            muted },
    { 'CocPumVirtualText',                     muted },
    { 'CocHighlightRead',                      { underline = true, bg = 'NONE', fg = 'NONE' } },
    { 'CocHighlightText',                      { underline = true, bg = 'NONE', fg = 'NONE' } },
    { 'CocHighlightWrite',                     { underline = true, bg = 'NONE', fg = 'NONE' } },
    { 'CocHintFloat',                          { bold = true, bg = 'NONE', fg = 'NONE' } },
    { 'CocInlayHint',                          { fg = C.fg3, bg = 'NONE' } },
    { 'CocHoverRange',                         { underline = true, bg = 'NONE', sp = 'NONE' } },
    { 'CocInlayHintType',                      { fg = C.fg3, bg = 'NONE' } },
    { 'CocInlayHintParameter',                 { fg = C.fg3, bg = 'NONE' } },
    { 'CocListLine',                           { bg = C.bg1, fg = C.fg1, bold = false } },
    { 'CocListPath',                           { fg = C.fg2 } },
    { 'CocListMode',                           { fg = C.fg2 } },
    { 'CocListFgGreen',                        { fg = C.green, bg = 'NONE' } },
    { 'CocListFgRed',                          { fg = C.red2, bg = 'NONE' } },
    { 'CocListFgBlue',                         { fg = C.blue2, bg = 'NONE' } },
    { 'CocListFgCyan',                         { fg = C.cyan2, bg = 'NONE' } },
    { 'CocListFgGrey',                         { fg = C.fg3, bg = 'NONE' } },
    { 'CocListFgWhite',                        { fg = C.fg1, bg = 'NONE' } },
    { 'CocListFgYellow',                       { fg = C.yellow2, bg = 'NONE' } },
    { 'CocListFgMagenta',                      { fg = C.magenta, bg = 'NONE' } },
    { 'CocListBgGreen',                        { fg = 'NONE', bg = C.green } },
    { 'CocListBgRed',                          { fg = 'NONE', bg = C.red2 } },
    { 'CocListBgBlue',                         { fg = 'NONE', bg = C.blue2 } },
    { 'CocListBgCyan',                         { fg = 'NONE', bg = C.cyan2 } },
    { 'CocListBgGrey',                         { fg = 'NONE', bg = C.fg3 } },
    { 'CocListBgWhite',                        { fg = 'NONE', bg = C.fg1 } },
    { 'CocListBgYellow',                       { fg = 'NONE', bg = C.yellow2 } },
    { 'CocListBgMagenta',                      { fg = 'NONE', bg = C.magenta } },
    { 'CocSemType',                            { fg = C.yellow2 } },
    { 'CocSemClass',                           { fg = C.yellow2 } },
    { 'CocSemDecorator',                       { fg = C.magenta } },
    { 'CocSemEnumMember',                      text_emphasis },
    { 'CocSemMacro',                           text_blue },
    { 'CocSemMethod',                          text_cyan },
    { 'CocSemNamespace',                       { fg = C.yellow2 } },
    { 'CocSemProperty',                        { fg = C.blue1 } },
    { 'CocSemRegexp',                          text_cyan },
    { 'CocSemModifier',                        text_red },
    { 'CocSemStruct',                          { fg = C.yellow2 } },
    { 'CocSemTypeParameter',                   { fg = C.fg2 } },
    { 'CocSemVariable',                        { fg = C.fg2 } },
    { 'CocSemFunction',                        text_blue },
    { 'CocSemMacroBang',                       text_orange },
    { 'CocSemFormatSpecifier',                 text_cyan },
    { 'CocSemBuiltinAttribute',                { fg = C.magenta } },
    { 'CocSemColon',                           text_red },
    { 'CocSemAngle',                           text_orange },
    { 'CocSemCharacter',                       text_cyan },
    { 'CocSemKeyword',                         { italic = true } },
    { 'CocSemComment',                         { fg = 'NONE' } },
    { 'CocSemReadonlyVariable',                { italic = true } },
    { 'CocSemStaticVariable',                  { italic = true } },
    { 'CocSemCallableVariable',                text_blue },
    { 'CocSemDeclarationFunction',             text_cyan },
    { 'CocSemDefinitionFunction',              text_cyan },
    { 'CocSemReferenceMethod',                 text_blue },
    { 'CocSemDeclarationMethod',               text_cyan },
    { 'CocSemDefaultLibraryMethod',            { fg = C.blue2, italic = true } },
    { 'CocSemDeclarationSelfKeyword',          text_red },
    { 'CocSemDeclarationMacro',                text_cyan },
    { 'CocSemDefaultLibrary',                  { italic = true } },
    { 'CocSemDocumentationKeyword',            text_orange },
    { 'CocSemDocumentationType',               { fg = C.yellow2 } },
    { 'CocSemDocumentationDecorator',          { fg = C.magenta } },
    { 'CocSemDocumentationEnumMember',         text_emphasis },
    { 'CocSemDocumentationMacro',              text_blue },
    { 'CocSemDocumentationMethod',             text_cyan },
    { 'CocSemDocumentationNamespace',          { fg = C.yellow2 } },
    { 'CocSemDocumentationProperty',           { fg = C.blue1 } },
    { 'CocSemDocumentationRegexp',             text_cyan },
    { 'CocSemDocumentationModifier',           text_red },
    { 'CocSemDocumentationStruct',             text_yellow },
    { 'CocSemDocumentationTypeParameter',      { fg = C.fg2 } },
    { 'CocSemDocumentationVariable',           { fg = C.fg2 } },
    { 'CocSemDocumentationFunction',           text_blue },
    { 'CocSymbolEnum',                         text_yellow },
    { 'CocSymbolStruct',                       text_yellow },
    { 'CocSymbolText',                         { fg = C.fg2 } },
    { 'CocSymbolField',                        { fg = C.blue1 } },
    { 'CocSymbolProperty',                     { fg = C.blue1 } },
    { 'CocSymbolEnumMember',                   text_emphasis },
    { 'CocSymbolVariable',                     text_yellow },
    { 'CocSymbolFunction',                     text_blue },
    { 'CocTreeTitle',                          ui_title },
    { 'CocTreeDescription',                    { fg = C.fg2 } },
    { 'CocTreeSelected',                       text_selected },
    { 'CocTreeOpenClose',                      { bold = true } },
    { 'CocTreeDescription',                    muted },
    { 'fzf1',                                  { fg = C.red2, bg = C.bg3 } },
    { 'fzf2',                                  { fg = C.red2, bg = C.bg3 } },
    { 'fzf3',                                  { fg = C.red2, bg = C.bg3 } },
  }
end
