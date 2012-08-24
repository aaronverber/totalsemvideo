u = User.new 
u.email = "default_user@nonsense.com"
u.password = "foobarbaz"
u.password_confirmation = "foobarbaz"
u.save


course = Course.find_or_create_by_name("A+")
course.save
File.open("episodes and chapters.csv").each_line do |line|
  cnum,cname,enum,ename = line.split(',').find_all{|x| x =~ /\w/}
  if !cname.nil? && !cname.empty?
    chapter = Chapter.find_or_create_by_name(cname)
    chapter.name = cname
    chapter.number = cnum
    chapter.course = course
    
    episode = Episode.new(name: ename, number: enum, chapter: chapter)
    puts chapter.name
    chapter.save
    episode.save
  end
end
