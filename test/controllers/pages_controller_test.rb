# frozen_string_literal: true

require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test 'should get splash' do
    get pages_splash_url
    assert_response :success
  end
end
