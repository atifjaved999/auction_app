class Api::ItemsController < Api::BaseController
  before_action :is_authenticated

  def index
    @items = Item.includes(:autobids)
    @items = @items.search_keyword(params[:keyword]) if params[:keyword].present?
    @items = @items.order("#{sort_column} #{sort_direction}")
    @items = @items.page(page_no).per(per_page)
  end
end
