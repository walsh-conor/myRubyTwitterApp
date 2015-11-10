class StaticPagesController < ApplicationController
# Simple comment: Static pages actions
     def home
         if logged_in?
            @micropost  = current_user.microposts.build
            @feed_items = current_user.feed
         end
      end


  def help
  end

  def about
  end

   def contact
  end
  
  def faq
  end

end