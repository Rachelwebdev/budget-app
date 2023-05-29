# frozen_string_literal: true
class PagesController < ApplicationController
  def splash
    render layout: 'splash'
  end
end
