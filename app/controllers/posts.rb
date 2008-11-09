class Posts < Application
  
  def index
    @posts = Post.paginate(:per_page => 10, :page => params[:page], :conditions => ['published = ?', true], :order => [:published_at.desc])
    render
  end
  
end
