require 'bundler/setup'
Bundler.require :default, :test
require 'gunner'

require 'minitest/autorun'
require 'mocha/setup'

FakeWeb.allow_net_connect = false
class MiniTest::Unit::TestCase
  def setup
    # super
    FakeWeb.clean_registry
  end
end