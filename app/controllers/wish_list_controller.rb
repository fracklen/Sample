class WishListController < ApplicationController
  def index
    @people = Person.includes(:wishes).all

  end
end
