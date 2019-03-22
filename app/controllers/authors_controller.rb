class AuthorsController < ApplicationController
  def create
    Post.create!(params.permit!)
  end

  def update
    Comment.all.keys.each {  |x| x.title; x.deleted_at; eval("x.post") }
    Post.update!(params.permit!)
    Post.update!(params.permit!)
    Comment.sql_injection(params[:title])
    Comment.calculate(:sum, params[:title])
    Comment.delete_all("id = #{params[:id]}")
    Author.delete_all("id = #{params[:id]}")
    User.find_by params[:id]
    Post.where(:user_id => 1).group(:user_id).having("total > #{params[:total]}")
    Post.joins(params[:table])
    Post.where('id > 1').lock(params[:lock])
  end

  def show
    Author.all.keys.each
    5.times{ {key: 'value'}.merge!(new_key: value) }
  rescue NoMethodError
    Author.all.select{|x| x}.first
    User.exists? params[:user]
  end

  def destroy
    Author.delete_all("id = #{params[:id]}")
    Book.delete_all("id = #{params[:book_id]}")
  end
end
