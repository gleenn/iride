# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_iRide_session',
  :secret      => '3f7130ee2ce199fcf552534453e8f94e1d2920be94109773bfa9950728393f917d7be3793e0bfacbe4d795401a090680bc9aea3aec3b79315ce7f62de1d6b11f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
