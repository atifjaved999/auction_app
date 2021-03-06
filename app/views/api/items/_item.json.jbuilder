json.id item.id
json.title item.title
json.description item.description
json.primary_image url_for(item.primary_image.variant(resize: '200x200')) rescue ""
json.price item.price
json.bid item.bid
json.expired item.expired
json.is_expired is_expired?(item)
json.highest_bid item.highest_bid
json.autobids autobids?(item, user)
json.created_at item.created_at
json.updated_at item.updated_at