class PostsController < ApplicationController
  def create
    Post.create!(params.permit!)
  end

  def update
    Post.update!(params.permit!)
  end

  def show
    Post.all.sort.reverse.last
    eval("Post.all")
    Post.all.each { |x| x.author.id; x.commets.sort.reverse.last }
  end
end
