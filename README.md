
# Deployemnt
 This application has been deployed to EC2 instance of AWS.
 Application Link: http://3.16.191.174:5000/

 Background Jobs Status: http://3.16.191.174:5000/sidekiq

# Notes
 * Used the given Schema and modified it where needed

 * This Application is serving as backend service.

 * As We don't have the admin panel so creating seed data.

The journey begins from
# Seeds

 * Seeding users

 * Seeding Items
   1) Fetching and seeding Items from TopHatter
   
   1.1) Created TopHatterProxy to consum API(s)
   1.2) SeedService is using TopHatterProxy
   1.3) create_items method is responsible to create all fetched items
   1.4) If there are too many items then we can enable a backgrond job written at line#16 "ItemWorker.perform_async('create_item', item)"
   1.5) Current I have commented the BG job and creating items in current thread.

   2) Also seeding some Addition Items (with primary image) via seed file

# APIs
 Exposed functionalities via following API(s)
  * List Items

    URL: http://3.16.191.174/api/items?page=2&per_page=2&sort_col=title&sort_dir=desc
    Method: GET
    Note: THis API handels Pagination, Sorting by column and Sort direction

  * Create Auction
      URL: http://3.16.191.174/api/items/1/auctions
      Method: POST
      Body: {
        "price": "12"
      }

  * Enable Autobids
      URL: http://3.16.191.174/api/items/4/autobids
      Method: POST
      Body: {}

  * Disable Autobids
      Remove Autobids API
      URL: http://3.16.191.174/api/items/4/autobids/remove
      Method: POST
      Body: {}

* ...

# Authentication

 * No Authentication process is implemented as such but using hard code values
  -> Fixed Email address will be sent from the Front End React.js Application
  -> Setting current user in Api::BaseController
  -> This user is being treated as curernt user in the application

# Functionalities covered
  1) Home Page – Item’s listing
  2) Bid Now functionality
    2.1) Bid Alert  notification (sent as Background process for better performance)
    2.2) 
  3) Cron job at the starting of every minute to check if end time of auction of any item has reached or not.
    3.1) if yes then mark the items as processed. 
    3.2) Winners will automatically receive email notifications
    3.3) Email will also be sent as Background Job

  4) Auto-bidding functionality
    4.1) Bid Alert  notification
    4.2) When there is not enough funds anymore, the auto-bidding will stop

  5) Cloning items from TopHatter
   5.1) This point is already explained above in the Seeds section.

# Thank You