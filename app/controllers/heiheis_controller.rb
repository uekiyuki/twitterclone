class HeiheisController < ApplicationController
  before_action :set_heihei, only: [:show, :edit, :update, :destroy]

  def index
    @heiheis = Heihei.all
  end

  def new
    @heihei = Heihei.new
  end

  def create
    @heihei = Heihei.new(heihei_params)
    if params[:back]
      render :new
    else
      if @heihei.save
        redirect_to heiheis_path, notice: "Heiheiを作成しました！"
      else
        render 'new'
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    @heihei = Heihei.find(params[:id])
    if @heihei.update(heihei_params)
      redirect_to heiheis_path, notice: "Heiheiを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @heihei.destroy
    redirect_to heiheis_path, notice:"Heihei!を削除しました！"
  end

  def confirm
    @heihei = Heihei.new(heihei_params)
    render :new if @heihei.invalid?
  end


  private

  def heihei_params
    params.require(:heihei).permit(:content)
  end

  def set_heihei
    @heihei= Heihei.find(params[:id])
  end
end
