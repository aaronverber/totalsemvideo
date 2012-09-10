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
end
