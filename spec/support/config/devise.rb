RSpec.configure do |config|
  module DeviseTestHelpersWithScope
    def sign_in(user)
      super(:user, user)
    end
  end

  config.include Devise::TestHelpers, type: :controller
  config.include DeviseTestHelpersWithScope, type: :controller
end
