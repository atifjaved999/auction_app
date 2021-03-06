class AuctionWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(*args)
    Rails.logger.info "Crone Job Started..."
    seconds = 1
    Item.find_each do |item|
      WinnerWorker.perform_async(seconds)
      seconds += 1
    end
    Rails.logger.info "Crone Job Ended."
  end

end