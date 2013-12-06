class Gram
  def self.retrieve
    #Instagram.tag_recent_media("wafflehouse") #this works fine
    Instagram.user_recent_media(218330389) #waffle house
  end
end