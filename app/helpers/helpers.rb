

class Helpers
    def self.current_user(session)
      @user = User.find_by_id(params[:user_id])
      return @user

    end

    def self.is_logged_in?

    end
end
