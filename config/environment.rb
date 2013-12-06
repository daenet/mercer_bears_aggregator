# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
MercerBearsAggregator::Application.initialize!

# configure Twitter gem for my application
Twitter.configure do |config|
  config.consumer_key = "KZ9boYS2A4vZnrvR03doGA"
  config.consumer_secret = "rL8dg6tXXzzxs69pMj0XkwT5soWMOjCljLARF80xcM"
  config.oauth_token = "14104554-VsSLKjapU2dJo7DWhOVVg8oA5MpAlg4keIpWKlOrl"
  config.oauth_token_secret = "XrZsBLm0hdOOG4rG81x01nliyqSydyDMd5rSsnBrf0"
end

Instagram.configure do |config|
  config.client_id = "f12380ddff484534814448419e86098d"
  config.client_secret = "16fca9e1844a437ab55f418ac21a7770"
end

