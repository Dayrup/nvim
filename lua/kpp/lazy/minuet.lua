return {
  "milanglacier/minuet-ai.nvim",
  config = function()
    require('minuet').setup({
      provider = 'openai_fim_compatible',
      provider_options = {
        openai_fim_compatible = {
          -- Pass the string name of a guaranteed non-empty system variable
          api_key = 'TERM', 
          name = 'Ollama',
          end_point = 'http://localhost:11434/v1/completions',
          model = 'qwen2.5-coder:3b', -- Adjusted to match your MacBook Air's 3B model
          optional = {
            max_tokens = 256,
            options = {
              temperature = 0.2,
            },
          },
        },
      },
    })
  end
}
