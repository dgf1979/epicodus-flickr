class HomeController < ApplicationController
  def index
    @images = []
    User.all.each do |user|
      @images.push(user.images.first)
    end
  end
end
