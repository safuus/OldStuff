# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MobXServer_session',
  :secret      => '9b7b776db287c121f2ccf894db50b3db58a39b1987a1713ab7997338a14b48f47a272f04ee861b50dff90fef3d4788ebabb503810421d0c0037e69e50a9590ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
