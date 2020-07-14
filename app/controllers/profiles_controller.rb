class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  def index
    @profiles = Profile.all
  end

  def show
  end

  def new
    @profile = Profile.new
  end

  def edit
  end

  def create
    @profile = Profile.new(profile_params)
    if @profile.save
        redirect_to @profile, notice: 'Profile was successfully created.' 
    else
        render :new 
    end
  end

  def update
    if @profile.update(profile_params)
        redirect_to @profile, notice: 'Profile was successfully updated.' 
    else
        render :edit 
    end
  end

  def destroy
    @profile.destroy
    redirect_to profiles_url, notice: 'Profile was successfully deleted.' 
    end
  end

  private

    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.fetch(:profile, {})
    end

    def record_not_found
        redirect_to inventory_index_url, notice: 'Profile not found'
    end

end
