class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["Claire", "Toni", "Santi", "Sarah"]
    search = params[:member]
    if search
      @members = @members.select do |member|
        member == search
      end
    end
  end
end
