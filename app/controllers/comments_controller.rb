class CommentsController < ApplicationController
    def create
         @post = Post.find_by_name_and_published(params[:name], true)
         if @post.commentable
            @comment = @post.comments.create(params[:comment])

            if @comment.valid?
                redirect_to post_path(@post.name), :notice=> 'Submitted, thank you.'
            else
                render 'posts/show'
            end
         else
            redirect_to post_path(@post.name), :notice=> 'Not allowed to comment'

         end

    end
end

