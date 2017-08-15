class SearchController < ApplicationController

  def new
    @search = Search.new
  end

  def index
    @body = Service.new.spelling_suggestions params[:name]
  end
end