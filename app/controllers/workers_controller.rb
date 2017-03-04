class WorkersController < ApplicationController

  def index
    @incomplete = Job.where(complete: false)
    @completed = Job.where(complete: true)
    @active = Job.where(status: true)
  end

  def show
    @worker = current_worker
    respond_to do |format|
      format.html {render :show}
      format.js
    end
  end

  def new
    # current_worker refers to a worker account currently logged in. current_user refers to a user account currently logged in.
    if current_worker
      redirect_to worker_path(current_worker)
      flash[:notice] = "You're already logged into a worker account!"
    elsif current_user
      # need to make sure users signing up to be workers are signed out of their user account first. -Mr. Fix-It
    sign_out :user
    redirect_to new_worker_registration_path
    else
      redirect_to new_worker_registration_path
    end
  end

end
