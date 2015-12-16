class Api::GoalsController < ApplicationController
  after_filter :set_csrf_cookie, except: :show

  def index
    Quarter.initiate_quarters
    @quarters = Quarter.all
    render json: @quarters
  end

  def show_quarter
    puts params
    @goals = QuarterlyGoal.by_site_and_quarter(
      params[:site_name], params[:quarter_id]
    )
    render json: @goals
    # render json: ["hi", "bye"].to_json
  end

  def show
    @goal = QuarterlyGoal.find(params[:id])
    render json: @goal
    # render json: ["hi", "bye"].to_json
  end

  def create
    puts params
    @goal = QuarterlyGoal.create_from_params(params)
    render json: @goal
  end

  def update
    puts params
    @goal = QuarterlyGoal.find(params[:id])
    @goal.update_with_params(params)
    render json: @goal
  end
end
