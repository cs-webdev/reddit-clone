class CommentsController < ApplicationController
  def index
    @comments = Comments.all
  end

  def create
  	@post = Post.find(params[:post_id])
  	comment = @post.comments.build(comment_params)
  	if comment.save
  		flash[:notice] = 'Comment created'	
  	else
  		flash[:error] = 'Could not create comment'
  	end

  	redirect_to post_path(@post)
  end

  private
  def comment_params
  	params.require(:comment).permit(:body)
  end
end
