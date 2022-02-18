class ItemListsController < ApplicationController
  before_action :set_item_list, only: %i[show edit update destroy]

  def index
    @q = ItemList.ransack(params[:q])
    @item_lists = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show; end

  def new
    @item_list = ItemList.new
  end

  def edit; end

  def create
    @item_list = ItemList.new(item_list_params)

    if @item_list.save
      redirect_to @item_list, notice: "Item list was successfully created."
    else
      render :new
    end
  end

  def update
    if @item_list.update(item_list_params)
      redirect_to @item_list, notice: "Item list was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @item_list.destroy
    redirect_to item_lists_url, notice: "Item list was successfully destroyed."
  end

  private

  def set_item_list
    @item_list = ItemList.find(params[:id])
  end

  def item_list_params
    params.require(:item_list).permit(:item_details_id)
  end
end
