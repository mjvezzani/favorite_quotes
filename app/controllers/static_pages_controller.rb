class StaticPagesController < ApplicationController
  def index
    @quote = Quote.first(order: "RANDOM()")
  end
end
