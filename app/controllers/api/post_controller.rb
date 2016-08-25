class api::PostController < ApplicationController

  private

  def collection
    @posts ||= Post.all
  end

  def resource
    @post ||= Post.find params[:id]
  end
end
