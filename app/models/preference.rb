class Preference < ActiveRecord::Base

  def self.dont_create_artists?
    !!where(allow_create_artists: false)
  end

  def self.dont_create_songs?
    !!where(allow_create_songs: false)
  end
  
end
