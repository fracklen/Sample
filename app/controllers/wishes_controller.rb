class WishesController < ApplicationController
  before_filter :validate_user

  def create
    @person = Person.find(params[:person_id])

    if @person
      @wish = Wish.create(:person_id => @person.id, :name => params[:name])
    end
  end

  def update
    @wish = Wish.find(params[:id])
    @wish.name = params[:name]
  end

  def cancel
    @wish = Wish.find(params[:wish_id])
    @person = @wish.person
    @wish.cancelled_at = Time.now
    @wish.save
  end

  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy
  end

  def update_order
    priorities = params[:priorities]
    
    priorities.each do |id, priority|
      Wish.where(:id => id).update_all(:priority => priority)
    end

    render :nothing => true
  end

end
