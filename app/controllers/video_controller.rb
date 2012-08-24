class VideoController < ApplicationController
  def index
    @course = session[:course] || Course.first(:conditions => {:name => 'A+'})
    @chapters = @course.chapters
  end
end
