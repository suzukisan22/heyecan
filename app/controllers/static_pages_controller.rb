class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed_items.includes(:user).order(created_at: :desc).page(params[:page])
    end
    
    @words = params[:q]
      if @words.present?
        Amazon::Ecs.debug = true
      @books = Amazon::Ecs.item_search(params[:q] , 
                                  :search_index => 'All' , 
                                  :response_group => 'Medium' , 
                                  :country => 'jp')
    end
  end
  
  
   private
  def set_item
    @item = Item.find(params[:id])
  end
end