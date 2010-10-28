# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_adb-demo_session',
  :secret      => '8aca22ccb9ddd7b8ec475d4e7142de3f83e549d36e1810742c9709c070647d48ee886745b12a6c4f9a6bb33dacce00b52e7f77dd9abea3bcabec2b70986d920c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
