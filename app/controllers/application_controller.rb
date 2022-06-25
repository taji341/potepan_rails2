class ApplicationController < ActionController::Base
  before_action :set_q

  def search
    @rooms = Room.all
    @results = @q.result
  end

  private

  def set_q
    @q = Room.ransack(params[:q])
  end
end
