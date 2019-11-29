class HeiheisController < ApplicationController
  before_action :set_heihei, only: [:show, :edit, :update]

  def index
    @heiheis = Heihei.all
  end
  # 追記する
  def new
    @heihei = Heihei.new
  end

  def create
    @heihei = Heihei.new(heihei_params)
    if @heihei.save
      # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
      redirect_to heiheis_path, notice: "Heihei!を作成しました！"
    else
      # 入力フォームを再描画します。
      render :new
    
    end
  end


  def show
    @heihei = Heihei.find(params[:id])
  end

  def edit
    @heihei = Heihei.find(params[:id])
  end

  def update
    @heihei = Heihei.find(params[:id])
    if @heihei.update(heihei_params)
      redirect_to heiheis_path, notice: "Heiheiを編集しました！"
    else
      render :edit
    end
  end

  private

  def heihei_params
    params.require(:heihei).permit(:content)
  end

  def set_heihei
    @heihei= Heihei.find(params[:id])
  end
end
