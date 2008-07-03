require 'rubygems'
require 'merb-core'
require 'spec' # Satisfies Autotest and anyone else not using the Rake tasks

# this loads all plugins required in your init file so don't add them
# here again, Merb will do it for you
Merb.start_environment(:testing => true, :adapter => 'runner', :environment => ENV['MERB_ENV'] || 'test')

Spec::Runner.configure do |config|
  config.include(Merb::Test::ViewHelper)
  config.include(Merb::Test::RouteHelper)
  config.include(Merb::Test::ControllerHelper)
end

def mock_model(model_class, options_and_stubs={})

  options_and_stubs = {
    :id => rand(1000),
    :key => rand(1000),
    :new_record? => false,
    :errors => stub("errors", :count => 0)
  }.update(options_and_stubs)

  m = mock([model_class.name, options_and_stubs[:id]].join("_"), options_and_stubs)

  m.send(:__mock_proxy).instance_eval <<-CODE
    def @target.is_a?(other)
    #{model_class}.ancestors.include?(other)
    end
    def @target.kind_of?(other)
    #{model_class}.ancestors.include?(other)
    end
    def @target.instance_of?(other)
    other == #{model_class}
    end
    def @target.class
    #{model_class}
    end
  CODE

  yield(m) if block_given?

  return m

end