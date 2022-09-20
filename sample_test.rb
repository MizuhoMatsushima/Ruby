require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    #成功例
    #assert_equal 'RUBY', 'ruby'.upcase
    #失敗例
    assert_equal 'RUBY', 'ruby'.capitalize
    #capitalizeメソッドは最初の1文字目のみ大文字にするメソッド。'RUBY'ではなく'Ruby'なら成功する。
  end
end