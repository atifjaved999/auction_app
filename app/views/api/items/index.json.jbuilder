json.items @items do |item|
  json.partial! 'api/items/item', item: item, user: @user
end
json.total_count @items.total_count 
