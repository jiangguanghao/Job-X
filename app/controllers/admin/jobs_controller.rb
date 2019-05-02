class Admin::JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_admin

  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def require_is_admin
    if !current_user.admin?
      flash[:alert] = 'You are not admin.'
      redirect_to root_path
    end
  end

  def require_is_admin
    if current_user.admin?
      flash[:alert] = 'You are not admin'
      redirect_to root_path
    end
  end


  private

  def job_params
    params.require(:job).permit(:title, :descrption)
  end
end
