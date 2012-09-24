module VideoHelper
  def flashify(url)
    url.gsub(':','%3A').gsub('/','%2F').gsub(' ', '%2B')
  end

  def oggify(url)
    url.gsub('mp4','ogv')
  end

  def display_chapter(chapter)
    if chapter == @chapter
      "display:block;"
    else
      "display:none;"
    end
  end

  def class_for_free(episode)
    return "free" unless @user.nil?
    if episode.free 
      return "free"
    else
      return "notfree"
    end
  end

  def link_for_free(episode)
    if !@user.nil? || episode.free 
      "/video/#{episode.id}" 
    else
      "/notfree/#{episode.id}"
    end
  end
end
