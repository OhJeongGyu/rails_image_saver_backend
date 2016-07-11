class PostController < ApplicationController
  def write



    user = User.find_by(user_id: params[:user_id])

    u = ImageUploader.new
    u.store!(params[:image])

    p = Post.new
    p.title = params[:title]
    p.content = params[:content]
    p.image_url = u.url;
    p.user_id = user.user_id
    p.save



    puts params[:title]
    puts params[:content]
  end

  def upload

  end
end
