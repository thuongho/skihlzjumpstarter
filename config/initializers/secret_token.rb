# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Selfstarter::Application.config.secret_key_base = ENV['RAILS_SECRET_TOKEN'] || '94a3801ff63ab443a639f47b4b0c9dca48a154b97e1a66c514882e71c0158067c098d9688c51b55e87674f788712a906647aef264d95bb51b206bf7d30827baf'
