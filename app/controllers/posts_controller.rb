require 'digest/md5'

class PostsController < ApplicationController

    def index
        @posts = Post.where(:published=>true).order('created_at DESC').paginate(:page=>params[:page], :per_page => 2) 

        respond_to do |format|
            format.html {}

            format.rss do
                @posts = Post.where(:published=>true).all(:order => "created_at DESC", :limit => 20)
                render :layout=>false
            end if params[:format] == 'rss'
        end
    end

    def show
        @post = Post.find_by_name_and_published(params[:name], true)
    end
end
