module Api
  module V1
    class MoviesController < ApplicationController
      def index
        movies = Movie.order('created_at DESC')
        render json: {status:'SUCCESS', message:'Loaded movies', data:movies}, status: :ok
      end

      def show
        movie = Movie.find(params[:id])
        render json: {status:'SUCCESS', message:'found the movie', data:movie}, status: :ok
      end

      def destroy
        Movie.delete(params[:id])
        render json: {status:'SUCCESS', message:'found and deleted the movie'}, status: :ok
      end

      def  update
        Movie.delete(params[:id])
        render json: {status:'SUCCESS', message:'found and deleted the movie'}, status: :ok
      end

      def create
        movie =   Movie.create(movie_params)

        if movie.save
          render json: {status:'Saved Movie', message:'saved the movie'}, status: :ok
        else
          render json: {status:'Not saved', message:'couldn"t save movie'}, status: :ok
        end
      end

      def movie_params
        params.permit(:title, :gender, :description)
      end

    end
  end
end