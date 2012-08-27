module VideoHelper
  def flashify(url)
    url.gsub(':','%3A').gsub('/','%2F').gsub(' ', '%2B')
  end
end
