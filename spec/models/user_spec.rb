# frozen_string_literal: true

require 'spec_helper'

describe User do
  before do
    @user = User.create(first_name: 'Test', last_name: 'User', email: 'test@gmail.com', password: 'password123')
  end

  it 'has a secure password' do
    expect(@user.authenticate('wrongpassword')).to eq(false)
    expect(@user.authenticate('password123')).to eq(@user)
  end
end
