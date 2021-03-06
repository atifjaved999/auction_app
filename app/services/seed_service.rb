class SeedService

  def create_items
    items = TopHatterProxy.get_items

    items.each do |item|
      item = {
        title: item['title'],
        description: item['description'],
        price: item['cost_basis'], 
        bid: item['minimum_bid_amount'], 
        expired: item['disabled_at'],
        skip_sync_to_tophatter: false,
        imagepath: item['primary_image']
      }
      # ItemWorker.perform_async('create_item', item)
      SeedService.new.create_item(item)
    end

  end

  def create_item(item)
    Item.create(
      title: item[:title],
      description: item[:description],
      price: item[:price], 
      bid: item[:bid], 
      expired: item[:expired], 
      imagepath: item[:imagepath],
      skip_sync_to_tophatter: item[:skip_sync_to_tophatter])
  end

end