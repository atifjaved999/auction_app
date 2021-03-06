class WinnerWorker
  include Sidekiq::Worker
  
  def perform(*args)
    Item.annouce_winners
  end

end