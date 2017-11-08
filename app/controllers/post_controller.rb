class PostController < ApplicationController
    
    def index
        @post = Post.all
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        
        Post.create(
            title: @title,
            content: @content
        )
    end
    
    def show
        @post_id = Post.find(params[:id])
    end
    
    def destroy
        Post.find(params[:id]).destroy
        redirect_to :back
    end
    
    def update
        @post = Post.find(params[:id])
      
    end

    def update_action
        id = params[:id]
        new_title = params[:title]
        new_content = params[:content]
        post = Post.find(id)
        post.update(:title => new_title, :content => new_content)
        redirect_to "/"
    end
end
