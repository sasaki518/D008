class BooksController < ApplicationController
    def index
        @results = []
    end
    
    def create
        array = params[:number].to_i
        if array % 2 == 1
            array = "odd"
        else
            array = "even"
        end
        @results = array
        render :index
    end
end