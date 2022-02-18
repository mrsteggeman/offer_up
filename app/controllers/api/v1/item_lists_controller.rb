class Api::V1::ItemListsController < Api::V1::GraphitiController
  def index
    item_lists = ItemListResource.all(params)
    respond_with(item_lists)
  end

  def show
    item_list = ItemListResource.find(params)
    respond_with(item_list)
  end

  def create
    item_list = ItemListResource.build(params)

    if item_list.save
      render jsonapi: item_list, status: :created
    else
      render jsonapi_errors: item_list
    end
  end

  def update
    item_list = ItemListResource.find(params)

    if item_list.update_attributes
      render jsonapi: item_list
    else
      render jsonapi_errors: item_list
    end
  end

  def destroy
    item_list = ItemListResource.find(params)

    if item_list.destroy
      render jsonapi: { meta: {} }, status: :ok
    else
      render jsonapi_errors: item_list
    end
  end
end
