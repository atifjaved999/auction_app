class ItemWorker
  include Sidekiq::Worker


  def perform(event, item)
    ItemWorker.public_send(event, item)
  end


  private

  def self.create_item(item)
    SeedService.new.create_item(item)
  end

  def self.create_at_top_hatter(item)
    item = {
      title: item['title'],
      description: item['description'],
      cost_basis: item['price'], 
      minimum_bid_amount: item['bid'], 
      disabled_at: item['expired']
    }
    # Call Create Product API for TopHatter
  end

end
