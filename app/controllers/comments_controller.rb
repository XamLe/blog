class CommentsController < ApplicationController

  def send_email
    user_mailer.send_email(  ).deliver
    redirect_to @post
  end

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
  
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter,:bodfy))
    redirect_to post_path(@post)
  end
 
  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end