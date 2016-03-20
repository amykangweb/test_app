require 'test_helper'
require 'rails/performance_test_help'

class PostPerformanceTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  # self.profile_options = { runs: 5, metrics: [:wall_time, :memory],
  #                          output: 'tmp/performance', formats: [:flat] }

  test "test homepage" do
    get '/posts'
  end

  test "test creating new post" do
    post '/posts', :post => { :title => "Hello World", :content => "How are you?" }
  end
end
