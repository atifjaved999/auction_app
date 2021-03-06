class Api::AutobidsController < Api::BaseController
  before_action :is_authenticated
  before_action :set_item, only: [:create, :remove]

  def create
    @autobid = @item.autobids.build(autobid_params)
    unless @autobid.save
      render :json =>{:success => false, :error => "#{@autobid.errors.full_messages[0]}"}, :status => 400
    end
  end

  def remove
    @autobid = @item.autobids.by_user(@user.id).take
    unless @autobid && @autobid.destroy
      render :json =>{:success => false, :error => "#{@autobid.errors.full_messages[0]}"}, :status => 400
    end
  end

  private

  def autobid_params
    params[:autobid][:user_id] = @user.id
    params.require(:autobid).permit(:user_id, :item_id)
  end

  def set_item
    @item = Item.find_by_id(params["item_id"])
  end

end
