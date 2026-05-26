# RubyLLM.configure do |config|
#   # config.gemini_api_base = 'https://generativelanguage.googleapis.com/v1beta'
#   config.openai_api_base = "http://192.168.1.165:1234/v1"  # Ollama, vLLM, etc.
#   config.openai_api_key = "dummy-key"  # If required by your server
# end

RubyLLM.configure do |config|
  config.openai_api_key = ENV['GITHUB_TOKEN']
  config.openai_api_base = "https://models.inference.ai.azure.com"
end