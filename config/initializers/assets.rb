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
Rails.application.config.assets.precompile += %w( jquery-1.11.3.min.js  bootstrap.js bootstrap.css neon-custom.js neon-core.css entypo.css )
Rails.application.config.assets.precompile += %w( select2.min.js select2.css select2-bootstrap.css)
Rails.application.config.assets.precompile += %w( datatables.js datatables.css )
Rails.application.config.assets.precompile += %w( neon-forms.css neon-theme.css white.css)
Rails.application.config.assets.precompile += %w( neon-custom.js icheck.js )



