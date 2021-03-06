class Api::BaseController < ActionController::Base
  protect_from_forgery with: :null_session

  protected

  def is_authenticated
    @user = User.find_by_email(params[:email]) || User.find_by_id(1)
  end


  def page_no
    # Setting default page
    params[:page] ? params[:page].to_i : 1
  end

  def per_page
    # Setting default per page
    params[:per_page].to_i > 0 ? params[:per_page].to_i : Item::PER_PAGE
  end

  def sort_column
    # Setting default sort column
     params[:sort_col].present? ? params[:sort_col] : "id"
  end

  def sort_direction
    # Setting default sort direction
    params[:sort_dir] == "asc" ? "asc" : "desc"
  end

end
