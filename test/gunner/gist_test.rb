require 'helper'
require 'shellwords'

class Gunner::GistTest < MiniTest::Unit::TestCase
  def test_info
    Gunner::Connection.expects(:json_request).with("https://api.github.com/gists/abc").returns('id' => 'abc')
    assert_equal({'id' => 'abc'}, Gunner::Gist.new('abc').info)
  end
end