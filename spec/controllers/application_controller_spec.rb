# frozen_string_literal: true

require 'spec_helper'

describe ApplicationController do
  describe 'Root Route' do
    it 'responds with status code 200' do
      get '/'
      expect(last_response.status).to eq(200)
    end
  end
end
