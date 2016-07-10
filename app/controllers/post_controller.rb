class PostController < ApplicationController
  def write

    u = ImageUploader.new
    u.store!(params[:image])

    p = Post.new
    p.title = params[:title]
    p.content = params[:content]
    p.image_url = u.url;
    p.save

    puts params[:title]
    puts params[:content]
  end

  def upload

  end
end
