class ManualsController < ApplicationController
  before_action :authenticate_user!
  def index
    @manuals = Manual.all.includes(:user).order(created_at: :desc)
  end
  def new
    @manual = Manual.new
  end

  def create
    @manual = Manual.new(manual_params)
    @manual.state = :draft

    if @manual.save
      redirect_to root_path
    else
      render :new
    end
  end
end
