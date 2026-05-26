# RubyLLM.configure do |config|
# 	config.ollama_api_base = 'http://localhost:1234/'
RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
end