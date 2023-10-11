class User::CommentsController < ApplicationController
  def index
    @my_comments = current_user.comments
  end
end
