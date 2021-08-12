class Api::V1::PostsController < ApplicationController
  skip_before_action 
  # :verify_authenticity_token
  before_action :set_post, only: [:show, :update, :destroy]

  def index
  end

  def send_image
    send_data image, type: 'image/jpeg', disposition: 'inline'
  end
  
  private

  def image
    path = "#{Rails.root}/public/good.jpg"
    img = File.open(path, 'r')
    img.read
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title)
  end

  # def show
  #   render json: { status: 'SUCCESS', message: 'Loaded the post', data: @post }
  # end

  # def create
  #   post = Post.new(post_params)
  #   if post.save
  #     render json: { status: 'SUCCESS', data: post }
  #   else
  #     render json: { status: 'ERROR', data: post.errors }
  #   end
  # end

  # def destroy
  #   @post.destroy
  #   render json: { status: 'SUCCESS', message: 'Deleted the post', data: @post }
  # end

  # def update
  #   if @post.update(post_params)
  #     render json: { status: 'SUCCESS', message: 'Updated the post', data: @post }
  #   else
  #     render json: { status: 'SUCCESS', message: 'Not updated', data: @post.errors }
  #   end
  # end
end
