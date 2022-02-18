class ItemListsController < ApplicationController
  before_action :set_item_list, only: [:show, :edit, :update, :destroy]

  # GET /item_lists
  def index
    @item_lists = ItemList.page(params[:page]).per(10)
  end

  # GET /item_lists/1
  def show
  end

  # GET /item_lists/new
  def new
    @item_list = ItemList.new
  end

  # GET /item_lists/1/edit
  def edit
  end

  # POST /item_lists
  def create
    @item_list = ItemList.new(item_list_params)

    if @item_list.save
      redirect_to @item_list, notice: 'Item list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /item_lists/1
  def update
    if @item_list.update(item_list_params)
      redirect_to @item_list, notice: 'Item list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /item_lists/1
  def destroy
    @item_list.destroy
    redirect_to item_lists_url, notice: 'Item list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_list
      @item_list = ItemList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_list_params
      params.require(:item_list).permit(:item_details_id)
    end
end
