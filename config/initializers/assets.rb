# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( neon-core.css )
Rails.application.config.assets.precompile += %w( neon-theme.css )
Rails.application.config.assets.precompile += %w( neon-forms.css )
Rails.application.config.assets.precompile += %w( datatables.css )
Rails.application.config.assets.precompile += %w( white.css )
Rails.application.config.assets.precompile += %w( select2.css )
Rails.application.config.assets.precompile += %w( jquery-1.11.3.min.js )
Rails.application.config.assets.precompile += %w( neon-custom.js )
Rails.application.config.assets.precompile += %w( datatables.js )
Rails.application.config.assets.precompile += %w( select2.min.js )
Rails.application.config.assets.precompile += %w( select2-bootstrap.css )
Rails.application.config.assets.precompile += %w( select2.css )
Rails.application.config.assets.precompile += %w( bootstrap.js )
Rails.application.config.assets.precompile += %w( neon-custom.js )
Rails.application.config.assets.precompile += %w( icheck.js )



