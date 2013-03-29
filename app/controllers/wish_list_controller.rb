class WishListController < ApplicationController
  before_filter :validate_user, :except => [:index]

  def index
    @people = Person.includes(:wishes).all

  end
end
