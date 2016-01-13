class TargetsController < ApplicationController
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  def index
    @targets = Target.all
  end

  def show
  end

  def new
    @target = Target.new
    @flavors = Flavor.all
  end

  def create
    @target = Target.create(target_params)
    if @target.save
      redirect_to @target, notice: "target was successfully created."
    else
      render target_new_path
    end
  end

  def edit
    @flavors = Flavor.all
  end

  def update
    if @target.update(target_params)
      redirect_to target_path(@target), notice: "target was successfully created"
    else
      render target_edit_path
    end
  end

  def destroy
    @target.destroy
    respond_to do |format|
      redirect_to flavors_url, notice: 'Flavor was successfully destroyed.'
    end
  end

  private

  def set_target
    @target = Target.find(params[:id])
    @flavor = @target.flavor
  end

  def target_params
    params.require(:target).permit(:name, :notes, :flavor_id)
  end

end
