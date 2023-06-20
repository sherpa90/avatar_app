class ItemsController < ApplicationController
  def index2
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, notice: 'Item creado exitosamente'
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:title, :description, :url_image)
  end
end
