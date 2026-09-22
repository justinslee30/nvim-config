-- [[ Profile Detection ]]
-- Reads the NVIM_PROFILE environment variable to determine which profile is active.
-- Set this in your shell config (e.g. .zshrc):
--   export NVIM_PROFILE="work"      -- on your work machine
--   export NVIM_PROFILE="personal"  -- on your personal machine
--
-- Usage in any file:
--   local profile = require("core.profile")
--   if profile.is_work() then ... end
--   if profile.is_personal() then ... end

-- vim.env reads environment variables (like os.getenv but Neovim-specific)
local current_profile = vim.env.NVIM_PROFILE or "personal" -- default to personal if not set

-- M is a common Lua pattern for creating a module (a table of functions you can require)
local M = {}

-- Returns true if the current profile is "work"
function M.is_work()
  return current_profile == "work"
end

-- Returns true if the current profile is "personal"
function M.is_personal()
  return current_profile == "personal"
end

-- Returns the raw profile string (e.g. "work" or "personal")
function M.name()
  return current_profile
end

return M
