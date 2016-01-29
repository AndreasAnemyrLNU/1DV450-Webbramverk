require 'test_helper'

class KeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  test ('Save new key') do
    t = Key.new
    t.name = 'LasseFB'
    t.application = "facebook"
    assert t.save
  end

end
