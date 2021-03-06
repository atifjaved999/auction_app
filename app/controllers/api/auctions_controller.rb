class Api::AuctionsController < Api::BaseController
  before_action :is_authenticated
  before_action :set_item, only: [:create]

  def create
    @auction = @item.auctions.build(auction_params.merge(user_id: @user.id))
    unless @auction.save
      render :json =>{:success => false, :error => "#{@auction.errors.full_messages[0]}"}, :status => 400
    end
  end

  private

  def auction_params
    params.require(:auction).permit(:id, :user_id, :item_id, :price)
  end

  def set_item
    @item = Item.find_by_id(params["item_id"])
  end

end
