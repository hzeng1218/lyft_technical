class TestsController < ApplicationController
  def create
    string_to_cut = params[:string_to_cut]
    chars = string_to_cut.split("")
    every_third = ""
    (2...chars.length).step(3).each do |index|
      every_third << chars[index]
    end
    msg = {"return_string": every_third}
    render json: msg
  end
end
