require "test_helper"

class UserTest < ActiveSupport::TestCase

  test "set_init_values sets some values" do
    u = User.new
    u.set_init_values

    assert u.name == ''
    assert u.role == 'author'
  end  

  test "is valid after set_init_values" do
    u = User.new
    u.set_init_values
    assert u.valid?
  end


  test "it accepts names 300 characters or less" do
    u = User.new
    u.set_init_values

    u.name = 'foo' * 100
    assert u.valid?
  end

  test "it rejects names >= 301 characters" do
    u = User.new
    u.set_init_values

    u.name = 'foo' * 100 + '!'
    assert u.invalid?
  end

  test "it accepts roles 'author' and 'admin'" do
    u = User.new
    u.set_init_values

    u.role = 'author'
    assert u.valid?
    u.role = 'admin'
    assert u.valid?
  end

  test "it rejects blank roles and nonexistent roles" do
    u = User.new
    u.set_init_values

    u.role = nil
    assert u.invalid?
    u.role = '???'
    assert u.invalid?
  end



end
