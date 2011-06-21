class Identity < ActiveRecord::Base
  belongs_to :user


def self.find_from_hash(hash)
  find_by_provider_and_uid(hash['provider'], hash['uid'])
end

def self.create_from_hash(hash, user = nil)
  user ||= User.create_from_hash!(hash)
  Identity.create(:user => user, :uid => hash['uid'], :provider => hash['provider'], :email => hash['user_info']['email'])
end


end
