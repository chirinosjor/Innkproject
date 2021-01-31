class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to users_path
      else
        render :new
      end
  end

  def show
    @user = User.find(params[:id])
    @movies = Movie.all
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def rent_movies
    @movies = Movie.all
  end

  def rent_series
    @series = Series.all
  end

  def create_movie_rent
    params[:movies_id].each do |movie_id|
      MovieRent.create(movie_id: movie_id, user_id: params[:id] )
    end
    redirect_to user_path
  end

  def create_series_rent
    params[:series_id].each do |series_id|
      SeriesRent.create(series_id: series_id, user_id: params[:id] )
    end
    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
