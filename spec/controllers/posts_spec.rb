require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Posts, "index action" do
  before(:each) do
    post = mock_model(Post)
    @posts = [post]
    Post.stub!(:all).and_return(@posts)
  end

  def do_get
    dispatch_to(Posts, :index) do |controller|
      controller.stub!(:render)
    end
  end

  it "should be successful" do
    do_get.should be_successful
  end

  it "should load all of the published Post records in descending order"
    #Post.should_receive(:all).with(:conditions => ['published = ?', true], :order => [:published_at.desc]).and_return(@posts)
    #do_get.assigns(:posts).should == @posts
  #end

  it "should display all of the posts" do
    dispatch_to(Posts, :index) do |controller|
      controller.should_receive(:render)
    end
  end
end