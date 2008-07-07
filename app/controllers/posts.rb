class Posts < Application
  
  def index
    @posts = Post.all(:conditions => ['published = ?', true], :order => [:published_at.desc])
    render
  end
  
end
