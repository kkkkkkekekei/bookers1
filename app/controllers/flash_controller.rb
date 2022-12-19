class FlashController < ApplicationController
  def flash1
    flash[:success] = "successfully"
  end

  def flash2
  end

  def flash3
  end
end
