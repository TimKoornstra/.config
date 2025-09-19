-- Helper function to get python path
local function get_python_path()
  local conda_prefix = os.getenv('CONDA_PREFIX')
  local venv_prefix = os.getenv('VIRTUAL_ENV')

  if conda_prefix then
    return conda_prefix .. "/bin/python3"
  elseif venv_prefix then
    return venv_prefix .. "/bin/python3"
  else
    return vim.g.python3_host_prog
  end
end

return {
  settings = {
    pylsp = {
      plugins = {
        -- Formatting
        black           = { enabled = false },
        autopep8        = { enabled = false },
        yapf            = { enabled = false },

        -- Linting
        pylint          = { enabled = false },
        pyflakes        = { enabled = false },
        pycodestyle     = { enabled = false },

        -- Type checking
        pylsp_mypy      = {
          enabled = true,
          overrides = { "--python-executable", get_python_path(), true },
          report_progress = true,
          live_mode = true,
          strict = true
        },

        -- Completion
        jedi_completion = {
          fuzzy = true,
          include_params = true
        },

        -- Import sorting
        isort           = { enabled = false },

        -- Additional features
        rope_completion = { enabled = true },
        rope_autoimport = { enabled = true }
      },
    },
  },
}
