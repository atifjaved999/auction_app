json.id autobid.id
json.user_id autobid.user_id
json.item_id autobid.item_id
json.created_at autobid.created_at
json.updated_at autobid.updated_at
json.item do 
  json.partial! 'api/items/item', item: autobid.item, user: autobid.user
end
