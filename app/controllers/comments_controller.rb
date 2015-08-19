class CommentsController < ApplicationController
  before_action :move_to_index

  def new
    @rival = Rival.find(params[:id])
  end

  def create
    @rival = Rival.find(params[:rival_id])
    Comment.create(user_id: current_user.id, rival_id: params[:rival_id], text: params[:text])
  end

  def index
    @comments = Comment.where(rival_id: params[:rival_id]).order('created_at DESC')
  end

  def move_to_index
    redirect_to new_user_session_url  unless user_signed_in?
  end
end
