class Posts < Application
  
  def index
    @posts = Post.all(:conditions => ['published = ?', true])
    render
  end
  
end
