class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  def bump_item
    @list = List.find(params[:list_id])
    @target = Target.find(params[:target_id])
    @target.move_higher
    redirect_to @list
  end

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
    @flavors = Flavor.all
  end

  def edit
    @flavors = Flavor.all
  end

  def create
    @flavors = Flavor.all
    @list = List.new(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to @list, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :flavor_id)
    end
end
