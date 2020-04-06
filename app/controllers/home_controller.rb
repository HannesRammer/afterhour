class HomeController < ApplicationController
  def index
    @after_hours=AfterHour.all
  end
end
