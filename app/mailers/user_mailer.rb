class UserMailer < ActionMailer::Base

  def declare_winner(user)
    @user = user
    @auction = @user.auctions.last
    mail to:  @user.email, from: "atif.javed.techverx@gmail.com",:subject=>"You are declared as Winner"
  end

  def percentage_alert(user, price, percentage)
    @user = user
    @price = price
    @percentage = percentage
    mail to:  @user.email, from: "atif.javed.techverx@gmail.com",:subject=>"You percentage limit has been reached"
  end

end
