class RivalsController < ApplicationController

  before_action :move_to_index, except: [:index,:top]


  def index
    @rivals = Rival.order('created_at DESC').page(params[:page]).per(9)
  end

  def new
  end

  def search
    @rivals = Rival.where('school LIKE(?)', "%#{params[:keyword]}%").order('created_at DESC').limit(9)
  end

  def create
    Rival.create(text: rival_params[:text], school: rival_params[:school], user_id: current_user.id)
  end


  def destroy
    rival = Rival.find(params[:id])
    if rival.user_id == current_user.id
      rival.destroy
    end
  end

  def edit
    @rival = Rival.find(params[:id])
  end

  def update
    rival = Rival.find(params[:id])
    if rival.user_id == current_user.id
      rival.update(text: params[:text])
    end
  end

  private
  def rival_params
    params.permit(:text, :school)
  end

  def move_to_index
    redirect_to new_user_session_url  unless user_signed_in?
  end

end
