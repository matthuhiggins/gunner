require 'helper'
require 'shellwords'

class Gunner::CommandTest < MiniTest::Unit::TestCase
  def test_gist_token
    assert_equal 'omg', command('omg').gist_token
  end

  private
  
    def command(line)
      Gunner::Command.new Shellwords.shellsplit(line)
    end

end