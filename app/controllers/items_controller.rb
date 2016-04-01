class ItemsController < ApplicationController

  def create
      @item = Item.new(params.require(:item).permit(:name))
      @item.user = current_user
      @item.save
      redirect_to :back
      authorize @item
  end


  def destroy
    item = Item.find(params[:id])

    item.destroy

    redirect_to :back
  end
end

# def days_left
#    7 - (DateTime.now.to_date - created_at.to_date).to_i
# end
