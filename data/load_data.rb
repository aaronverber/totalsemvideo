u = User.new 
u.login = "default_user"
u.email = "default_user@nonsense.com"
u.password = "foobarbaz"
u.password_confirmation = "foobarbaz"
u.save


course = Course.find_or_create_by_name("A+")
course.save
File.open("data/episodes and chapters.csv").each_line do |line|
  cnum,cname,enum,ename = line.split(',').find_all{|x| x =~ /\w/}
  if !cname.nil? && !cname.empty?
    cname = cname.gsub('!',',')
    chapter = Chapter.find_or_create_by_name(cname)
    chapter.name = cname
    chapter.number = cnum
    chapter.course = course

    escaped_name = ename.gsub(' ', '+').gsub('!',',').chop
    video_url = "https://s3.amazonaws.com/totalsem-videos/%03d #{escaped_name}.mp4" % enum

    puts line
    puts video_url
    
    episode = Episode.new(name: ename.gsub('!',','),
                          number: enum, 
                          chapter: chapter, 
                          video_url: video_url)
    chapter.save
    episode.save
  end
end
