class ForumThreadController < ApplicationController
  def index
    @threads = ForumThread.all
  end

  def show
    @thread = ForumThread.find(params[:id])
  end

  def new
    @thread = ForumThread.new
  end

  def create
    @thread = ForumThread.new
  end
end