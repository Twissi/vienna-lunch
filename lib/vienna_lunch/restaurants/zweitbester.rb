require 'json'
require 'open-uri'

module ViennaLunch::Restaurants::Zweitbester
  NAME = "Zweitbester"
  ADDRESS = "Heumühlgasse 2, 1040 Wien"
  LOCATION = [48.195374,16.363001]
  URL = 'http://www.zweitbester.at/'
  MENU_URL = 'https://graph.facebook.com/v2.2/245555312167202/feed?'
  
  def self.lunch
    @lunch = facebook_lunch(MENU_URL, /TAGESKARTE/i)
    return @lunch.split('GETRÄNKE').first
  end
end
