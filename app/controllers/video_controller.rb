class VideoController < ApplicationController
  def index
    course = find_course
    chapters = course.chapters
    redirect_to(:action => "show", :id => 2)
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
