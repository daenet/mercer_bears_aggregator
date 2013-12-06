class Tweet
  @keywords = "Mercer bears, Mercer football"

  def self.retrieve
    Twitter.search(@keywords, :count => 100).results
  end
end