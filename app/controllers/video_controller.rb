class VideoController < ApplicationController
  before_filter :require_user, :except => [:show, :notfree]


  def index
    course = find_course
    chapters = course.chapters
    redirect_to(:action => "show", :id => 1)
  end

  def show
    if current_user.nil?
      if Episode.find(params[:id]).free
        @show_free = true
        @user = nil
      else
        redirect_to "/notfree"
      end
    else
      @show_free = false
      @user = current_user
    end
    @course = find_course
    @chapters = @course.chapters
    @episode = Episode.find(params[:id])
    @chapter = Chapter.find(@episode.chapter_id)
  end

  def watched
    return false if @user.nil?

    @episode = Episode.find(params[:id])
    @user = current_user

    w = Watched.where({:user_id => @user.id, :episode_id => @episode.id}).first_or_create
    w.save

    render :text => "thanks"
  end

  def notfree
    @course = find_course
    @chapters = @course.chapters
    @episode = Episode.find(params[:id])
    @chapter = Chapter.find(@episode.chapter_id)
  end

  private
  
  def find_course
    session[:course] || Course.first(:conditions => {:name => 'A+'})
  end

end
