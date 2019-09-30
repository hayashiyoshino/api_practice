class HomesController < ApplicationController
  def index
    @comments = Comment.all
  end
end
