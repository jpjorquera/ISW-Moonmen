class StaticPagesController < ApplicationController
  def home
    if (!current_user.nil?)
      redirect_to operations_path
    end

  end

  def help
  end

  def about
  end

  def contact
  end

end
