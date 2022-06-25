class ApplicationController < ActionController::Base
  before_action :set_q

  def search
    @rooms = @q.result
  end

  def set_q
    @q = Room.ransack(params[:q])
  end
end
