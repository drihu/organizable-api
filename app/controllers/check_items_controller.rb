class CheckItemsController < ApplicationController
  before_action :set_check_item, only: [:show, :update, :destroy]

  # GET /check_items
  def index
    @check_items = CheckItem.all

    render json: @check_items
  end

  # GET /check_items/1
  def show
    render json: @check_item
  end

  # POST /check_items
  def create
    @check_item = CheckItem.new(check_item_params)

    if @check_item.save
      render json: @check_item, status: :created
    else
      render json: @check_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /check_items/1
  def update
    if @check_item.update(check_item_params)
      render json: @check_item
    else
      render json: @check_item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /check_items/1
  def destroy
    @check_item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_item
      @check_item = CheckItem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def check_item_params
      params.require(:check_item).permit(:name, :pos, :completed, :checklist_id)
    end
end
