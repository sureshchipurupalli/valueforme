class AppraiserController < ApplicationController

  before_filter :check_appraiser, :except => :notify
  protect_from_forgery :except => :notify

  def show
    @user.photos.build if @user.photos.size == 0
  end

  def check_appraiser
    @user = current_user if current_user && current_user.is_appraiser?
    if @user.nil?
      redirect_to root_path
    end
  end

  def submit_application
    unless current_user.is_confirmed?
      current_user.submit_application
      flash[:notice] =  "Your application was submitted succesfully"
    end
    redirect_to appraiser_steps_path
  end

  def get_application_status
    u = User.find(params[:id])
    isComplete = (u && u.is_appraiser?) ? u.is_appraiser_application_complete : false
    respond_to do |format|
      format.json { render json: {:appraiser_id => u.id, :status => isComplete} }
    end
  end

  def notify
    #Parameters: {"comments"=>"test tewt 3", "notify_category"=>"10"}
    if current_user.admin?
      User.notify_appraisers_in_category(category: Category.find(params[:notify_category]), comments: params[:comments])
      flash[:error] = "Appraisers were notified"
    end
    redirect_to admin_root_path
  end
end


