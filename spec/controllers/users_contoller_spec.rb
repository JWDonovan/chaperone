# frozen_string_literal: true

require 'spec_helper'

describe UsersController do
  context 'get login' do
    before do
      get '/login'
    end

    it 'responds with status code 200' do
      expect(last_response.status).to eq(200)
    end
  end
end
