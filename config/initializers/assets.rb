# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( home.css )
Rails.application.config.assets.precompile += %w( style1.css )
Rails.application.config.assets.precompile += %w( script1.js )
Rails.application.config.assets.precompile += %w( Desert.jpg )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
