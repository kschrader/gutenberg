class Posts < Application
  
  def index
    @posts = Post.paginate(:per_page => 10, :page => params[:page], :conditions => ['published = ?', true], :order => [:published_at.desc])
    render
  end

  def show
    @post = Post.get(params[:id])
    render
  end
  
end
