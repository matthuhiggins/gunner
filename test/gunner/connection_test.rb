require 'helper'
require 'json'

class Gunner::ConnectionTest < MiniTest::Unit::TestCase
  def test_json_request
    FakeWeb.register_uri(:get, 'https://example.com/test1', body: JSON.generate('foo' => 'bar'))

    assert_equal({'foo' => 'bar'}, Gunner::Connection.json_request('https://example.com/test1'))
  end
end