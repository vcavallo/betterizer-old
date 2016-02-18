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
    if params[:list_id].present?
      render 'new_listed_target'
    end
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
    respond_to do |format|
      if @target.update(target_params)
        format.html { redirect_to target_path(@target), notice: "target was successfully created" }
        format.json { render json: 'hello hello', status: :ok, location: @target }
      else
        format.html { render target_edit_path }
        format.json { render json: 'did not work', status: unprocessable_entity }
      end
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
    params.require(:target).permit(:name, :notes, :flavor_id, :list_id, :complete)
  end

end
