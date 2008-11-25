require File.join( File.dirname(__FILE__), "..", "spec_helper" )

describe Post do

  before(:each) do
    @post = Post.new
  end

  it "should convert the bady in markdown to HTML" do
    @post.body = '# Header'
    @post.body_html.should == "<h1>Header</h1>\n"
  end

end