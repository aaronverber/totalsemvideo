class ShoppController < ApplicationController
  skip_before_filter :require_user, :only => [:add_user, :add_course_access]

  def add_user
    if request.post?
      begin 
        user_json = ActiveSupport::JSON.decode(request.body)
        if not user_json.has_key? "name"
          render :text => "missing user name\n"
        elsif not user_json.has_key? "password"
          render :text => "missing user password\n"
        else
          render :text => "success: added user\n"
        end
      rescue
        render :text => "could not parse json\n"
      end
    else
      render :text => "failure: expected post\n"
    end    
  end

  def add_course_access
    if request.post?
      begin 
        course_json = ActiveSupport::JSON.decode(request.body)
        if not course_json.has_key? "course_name"
          render :text => "missing course_name\n"
        elsif not course_json.has_key? "user_name"
          render :text => "missing user_name\n"
        else
          render :text => "success: added course access\n"
        end
      rescue
        render :text => "could not parse json\n"
      end  
    else
      render :text => "failure: expected post\n"
    end
  end
end
