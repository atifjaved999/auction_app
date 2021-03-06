module Api::ItemsHelper

  def autobids?(item, user)
    item.autobids.by_user(user.id).any? # Can move it in model later
  end

  def is_expired?(item)
    Time.current > item.expired
  end
end
