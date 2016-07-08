class CommentsController < ApplicationController

http_basic_authenticate_with name: "mark", password: "cassidy", only: :destroy
  
#READING
  def index
  end

  def show
  end


#FORMS FOR CREATING AND EDITING
  def new
  end

  def edit
  end

#ACTIONS OF CREATING, UPDATING, DESTROYING
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)

    redirect_to article_path(@article)
  end

  def update
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to article_path(@artcile)
  end

private

  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
