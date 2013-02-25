class WishesController < ApplicationController
  def create
    @person = Person.find(params[:person_id])

    if @person
      @wish = Wish.create(:person_id => @person.id, :name => params[:name])
    end
  end

  def update
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
end
