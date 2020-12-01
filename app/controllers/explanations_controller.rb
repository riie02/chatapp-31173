class ExplanationsController < ApplicationController
  def index
    @explanations = Explanation.all
  end

  def new
    @explanation = Explanation.new
  end

  def create
    @explanation = Explanation.new(explanation_params)
    if @explanation.save
      redirect_to explanations_path
    else
      render :new
    end
  end

  def show
    @explanation = Explanation.find(params[:id])
  end

  def destory
    @explanation = Explanation.find(params[:id])
    @explanation.destory
    redirect_to explanations_path
  end

  def edit
    @explanation = Explanation.find(params[:id])
  end

  def update
    explanation = Explanation.find(params[:id])
    explanation.update(explanation_params)
    if explanation.save
      redirect_to explanation_path
    else
      render :edit
    end
  end

  private
  def explanation_params
    params.require(:explanation).permit(:title, :text).merge(user_id: current_user.id)
  end

end