module Api
  module V1
    class MoviesController < ApplicationController
      def index
        movies = Movie.order('created_at DESC')
        render json: {status:'SUCCESS', message:'Loaded movies', data:movies}
      end
    end
  end
end