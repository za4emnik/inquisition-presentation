class CommentsController < ApplicationController
  def create
    binding.pry

      Comment.create!(params.permit!)

  end

  def update
    #unneeded comment here

    Comment.update!(params.permit!)
  end

  def destroy
    Comment.delete_all("id = #{params[:id]}")
    User.destroy_all(["id = ? AND admin = '#{params[:admin]}", params[:id]])
  end

  def Some_method

  end
end
