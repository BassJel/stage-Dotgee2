# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Omni::Application.initialize!

require 'yaml'
YAML::ENGINE.yamler = 'psych'
