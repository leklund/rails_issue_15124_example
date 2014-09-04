class ErrorsController < ApplicationController
  def not_found_error
    render text: '404'
  end
  def server_error
    render text: '500'
  end
  def bad_entity
    render text: '422'
  end
  def bad_request
    render text: '400'
  end
  def forbidden_error
    render text: '403'
  end
end
