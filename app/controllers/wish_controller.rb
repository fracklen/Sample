class WishController < ApplicationController
  def create
    @person = Person.find(params[:person_id])

    if @person
      @wish = Wish.create(:person_id => @person.id, :name => params[:name])
    end
  end

  def update
  end

  def delete
  end
end
