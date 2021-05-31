require 'pry'

class Helpers
    def self.current_user(session)
      binding.pry
      @user = User.find_by_id(session[:user_id])

    end

    def self.is_logged_in?(session)
      #You also have !!, which is not a method:
      #This one is useful because it’ll turn any value into a boolean.
      #Then you have !, which is the same but it gives you the opposite boolean value.
      !!session[:user_id]

    end
end
