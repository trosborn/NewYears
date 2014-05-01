class CommentsController < ApplicationController
  before_filter :load_commentable

  def new
    @comment = @commentable.comments.new
  end

  def index
    @commentable = Post.find(params[:post_id])
    @comments = @commentable.comments
  end

  # def edit
  #   #hmmmmm? I'll think about this one
  #   #@comment = @commentable.comments.find(params[:id])
  # end



  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      redirect_to @commentable, notice: "Comment created."
    else
      render :new
    end
  end

  private

  def load_commentable

    klass = [Post, Goal].detect { |c| params["#{c.name.underscore}_id"] }
    @commentable = klass.find(params["#{klass.name.underscore}_id"])
  end



  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type)
  end
end

