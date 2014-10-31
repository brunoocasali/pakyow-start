require 'bundler/setup'

require 'pakyow'
require 'twitter'

Pakyow::App.define do
  configure :global do
    # put global config here and they'll be available across environments
    app.consumer_key        = 'Pw0eDPf3eQKq7DZSaoumfcI4z'
		app.consumer_secret     = 'Le7sH0HlC5SZ5Rq1oByf5cDnyrt1uy19uKqCn8iFfkEv2D3Lsq'
		app.access_token        = '1961188398-FMcr2iWoZvYpP9yO24RfyNzzLVDe6SbUbNHN5tV'
		app.access_token_secret = 'wDAHI9iCSi8lKpckele57ELlikULDzmgrg42EgV90QwtF'
  end

  configure :development do
    # put development config here
  end

  configure :prototype do
    # an environment for running the front-end prototype with no backend
    app.ignore_routes = true
  end

  configure :production do
    # suggested production configuration
    app.auto_reload = false
    app.errors_in_browser = false

    # put your production config here
  end
end
