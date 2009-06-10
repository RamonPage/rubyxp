# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rubyxp_session',
  :secret      => '86e65774811388aeb3b485a6ba5da2f8d1a2382c9b54f318cabd1b99345a683c14df02788fba9f297c1053efdfc1f4697bcd2082572cdfa22a58fdc70e104cd1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
