class PostsController < ApplicationController
  before_action :set_post, only: %i[show destroy]

  def new
    @post = Post.new
    @user = User.find_by(id: params[:user_id])
  end

  def create
    @post = Post.new(post_params)
    url = params[:post][:youtube_url]
    url = url.last(11)
    @post.youtube_url = url
    if @post.save
      flash[:notice] = '投稿が保存されました'
      redirect_to root_path
    else
      flash[:alert] = '投稿に失敗しました'
      redirect_to root_path
    end
  end

  def index
    @posts = Post.all.order('created_at DESC')
    @posts = Post.tagged_with(params[:tag_name].to_s) if params[:tag_name]
  end

  def show; end

  def destroy
    if @post.user == current_user
      flash[:notice] = '投稿が削除されました' if @post.destroy
    else
      flash[:alert] = '投稿の削除に失敗しました'
    end
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:caption, :tag_list, :youtube_url, :address, images: []).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find_by(id: params[:id])
  end
end
