Rails.application.config.middleware.use OmniAuth::Builder do
  # Strategy user User model instead of default Identity model
         provider :facebook, '195651373819920', '58f215268cf1e24bc1ac1eb9f9298dac'
         provider :twitter, "d3X1Ly7xEGBFFBZ2ZChpBA", 'IeY2DvhyhP4vE17CZ8NJc0BsfCVzKhuYoRsy1vbvds'
         
         provider :identity, :model => Password, :fields => [:first_name, :last_name, :email] , :on_failed_registration => UsersController.action(:new)
end