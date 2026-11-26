return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = function(_, opts)
    local providers = require("CopilotChat.config.providers")
    local original = providers.copilot.prepare_input
    opts.providers = vim.tbl_deep_extend("force", opts.providers or {}, {
      copilot = {
        prepare_input = function(inputs, o)
          local request, headers = original(inputs, o)
          if o.model.id:find("^claude") then
            request.top_p = nil
            request.n = nil
            if request.tools and #request.tools == 0 then
              request.tools = nil
            end
            request.max_tokens = math.min(request.max_tokens or 16000, 16000)
          end
          return request, headers
        end,
      },
    })
  end,
}
