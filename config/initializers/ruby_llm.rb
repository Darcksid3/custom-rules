# RubyLLM.configure do |config|
# 	config.ollama_api_base = 'http://localhost:1234/'

#Open AI
RubyLLM.configure do |config|
  config.openai_api_key = ENV["OPENAI_API_KEY"]
  config.default_model = "gpt-4o-mini" #Par défaut, gpt-5. Si vous souhaitez utiliser la température comme vu ce matin, utilisez cette ligne. Sinon ne la mettez pas.
  config.default_image_model = "gpt-image-1" #Changement du model par défaut pour les générations d'images.
end

##Anthropic
# RubyLLM.configure do |config|
#   config.anthropic_api_key = ENV["ANTHROPIC_API_KEY"]
#   config.default_model = "claude-sonnet-4-6"
# end
