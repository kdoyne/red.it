class StoriesController < ApplicationController

  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.create(story_params)
    @story.user = current_user
    redirect_to stories_path

  end


  private

  def story_params
    params.require(:story).permit(:url)
  end

end