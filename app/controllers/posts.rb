class Posts < Application
  
  def index
    @posts = Post.all(:conditions => ['active = ?', true])
    render
  end
  
end
