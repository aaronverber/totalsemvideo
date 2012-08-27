class VideoController < ApplicationController
  def index
    course = find_course
    chapters = course.chapters
    redirect_to(:action => "show", :id => chapters[0].episodes[0].id)
  end

  def show
    @course = find_course
    @chapters = @course.chapters
    @episode = Episode.find(params[:id])
  end

  private
  
  def find_course
    session[:course] || Course.first(:conditions => {:name => 'A+'})
  end

end
