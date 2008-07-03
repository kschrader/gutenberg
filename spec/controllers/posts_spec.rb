require File.join(File.dirname(__FILE__), "..", 'spec_helper.rb')

describe Posts, "index action" do

  it "should show all of the posts in the system" do
    Post.should_receive(:all).and_return([mock_model(Post, :title => "Kurt")])
    dispatch_to(Posts, :index)
  end
end