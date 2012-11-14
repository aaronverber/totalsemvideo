class ShoppController < ApplicationController
  skip_before_filter :require_user, :only => [:add_user, :add_course_access]

  def add_user
    logger.info 'got an add_user request'
    if request.post?
      begin 
        logger.info "received"
        user_json = decode_raw(params.keys[0])
        logger.info user_json
        if not user_json.has_key? "name"
          logger.error "missing user name"
        elsif not user_json.has_key? "password"
          logger.error "missing user password"
        else
          logger.info "success: added user"
        end
      rescue
        logger.error "could not parse json"
      end
    else
      logger.error "failure: expected post"
    end    
    render :text => "Ok"
  end

  def add_course_access
    logger.info 'got an add_course request'
    if request.post?
      begin 
        logger.info "received"
        course_json = decode_raw(params.keys[0])
        logger.info course_json
        if not course_json.has_key? "course_name"
          logger.error "missing course_name"
        elsif not course_json.has_key? "user_name"
          logger.error "missing user_name"
        else
          logger.info "success: added course access"
        end
      rescue
        logger.error "could not parse json"
      end  
    else
      logger.error "expected post"
    end
    render :text => "Ok"
  end

  def decode_raw(text)
    logger.info("decode: " + text)
    return ActiveSupport::JSON.decode(text)
  end
end
