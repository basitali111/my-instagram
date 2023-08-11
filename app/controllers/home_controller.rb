class HomeController < ApplicationController
  before_action :set_suggestions
  def index; end

  
    def set_suggestions
      @suggestions = [current_user.followers]
      [current_user.followers,current_user.followings].flatten.uniq.each do |f|
        @suggestions.append([f.followers,f.followings])
      end
      @suggestion = [@suggestions,User.all.sapmle(10)].flatten.uniq - [current_user.followings,current_user].flatten
      @suggestion = @seggustion.sample(5)
    end
 end

