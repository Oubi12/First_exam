class User::PostsController < ApplicationController
    before_action :authenticate_user!

    def index
      @user_posts = current_user.posts.page(params[:page]).per(5)
    end
end
