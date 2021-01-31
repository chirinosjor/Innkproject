class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def select
    @movies = Movie.all
  end

  def rent
    @rent = MovieRent.new()
  end
end
