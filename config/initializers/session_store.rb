# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_auth_temp_session',
  :secret      => 'b5f6f626c8de73b6cc14bc23be2d8b1b7de930c02b66bedc24ec93d1a9d9c74edae9f0d513f56b3d8ec155bb19a344d9b295cd507f408ab800aee7d3031fd525'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
