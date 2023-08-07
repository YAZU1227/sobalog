class SobasController < ApplicationController
  def index
    @sobas = Soba.all
  end

  def new
    @soba = Soba.new
  end
end
