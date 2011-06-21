class Password < OmniAuth::Identity::Models::ActiveRecord
  validates_presence_of :first_name,:last_name,:email
  validates_uniqueness_of :email


  belongs_to :user

  after_create :create_user_account

  def create_user_account

    end

end
