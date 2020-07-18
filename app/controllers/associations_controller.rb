class AssociationsController < ApplicationController
  before_action :set_association, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index , :show]
  def index
    @associations = Association.all
  end
  def new
    @assos = Association.new
  end

  def create
    @assos = Association.new(association_params)
    @assos.save
    if @assos.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    set_association
  end

  def update
    @assos.update(association_params)
    redirect_to root_path
  end

  def destroy
    @assos.destroy
    redirect_to root_path
  end

  private

  def set_association
    @assos = Association.find(params[:id])
  end

  def association_params
    params.require(:association).permit(:name, :tag_line, :description, :email, :phone, :address, photos: [])
  end
end
