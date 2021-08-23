class PagesController < ApplicationController

  def home
    @employees = ["sam", "Luis", "Loulou"]

  end

  def about
  end

  def contact
    @employees = ["Sam", "Luis", "Loulou"]
    query = params[:member].capitalize
    if query.present?
      @employees = @employees.select { |employee| query == employee }
    end
  end
end
