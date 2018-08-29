class OperationsController < ApplicationController
  def center
    if current_user.nil?
      redirect_to root_path
    end
  end
end
