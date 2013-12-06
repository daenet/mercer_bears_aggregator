class Facebook
  require 'open-uri'

  def self.retrieve
    #access_token = open("https://graph.facebook.com/oauth/access_token?client_id=173230356058847&client_secret=d2273cacba88b1fa66d6dc4a1c14869e&grant_type=client_credentials").gets
    access_token = open("https://graph.facebook.com/oauth/access_token?client_id=127550380613969&client_secret=6915225aad31306f2be52729a159592a&grant_type=client_credentials").gets
    access_token.sub!('access_token=','')
    Rails.logger.debug(access_token)
    FGraph.search_post('casting', :access_token => access_token)
  end

end