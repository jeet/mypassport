class User < ActiveRecord::Base

   has_one :password
  has_many :identities

  def self.create_from_hash!(hash)
   create(:name => hash['user_info']['name'])
end
end
