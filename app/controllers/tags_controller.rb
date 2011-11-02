class TagsController < ApplicationController

    def show 
        @posts = Post.where(:published=>true).tagged_with(params[:name]).paginate(:page=>params[:page], :per_page => 2) 

    end
end
