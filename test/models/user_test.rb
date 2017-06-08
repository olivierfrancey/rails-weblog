require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '#display_name when admin' do
    #user = users(:bob)
    #user = User.new(admin: true, name: 'bob')
    assert_equal('Bob (admin)', users(:bob).display_name, msg = 'Bob is wrongly displayed')
  end
  
  test '#display_name when not_admin' do
    #user = User.new(admin: false, name: 'jane')
    user = users(:jane)
    assert_equal('Jane', users(:jane).display_name, msg = 'Jane is wrongly displayed')
  end
end
