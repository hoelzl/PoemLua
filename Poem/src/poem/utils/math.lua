local M = {}

function M.running_average (old_avg, n_old, new_val)
  local n_new = n_old + 1
  return old_avg + (new_val - old_avg)/n_new, n_new
end

return M
