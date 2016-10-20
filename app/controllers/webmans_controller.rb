require 'date'

class WebmansController < ApplicationController

  def main
    if params[:date].nil?
      @date = Date.today
    else
      @date = Date.parse(params[:date])
    end
    @chapters = Chapter.where(date: @date)
  end


end
