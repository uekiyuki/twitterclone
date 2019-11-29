class HeiheisController < ApplicationController
  def index
    @heiheis = Heihei.all
  end
  # 追記する
  def new
    @heihei = Heihei.new
  end

  def create
    Heihei.create(heihei_params)
    redirect_to new_heihei_path
  end

  private

  def heihei_params
    params.require(:heihei).permit(:content)
  end
end
