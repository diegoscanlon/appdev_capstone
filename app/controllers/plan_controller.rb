class PlanController < ApplicationController

  def index
    render({ :template => "plan_templates/index"})
  end
  
  def plan
    render({ :template => "plan_templates/plan"})
  end
  
  def create
    new_plan = Plan.new
    new_plan.going_to = params.fetch("going_to_param")
    new_plan.leaving_from = params.fetch("leaving_from_param")
    new_plan.date = params.fetch("date_param")
    new_plan.time = params.fetch("time_param")

    new_plan.save

    if new_plan.id != nil
      redirect_to("/", {:notice => "Plan is shared!"})
    else
      redirect_to("/plan", { :alert => new_plan.errors.full_messages.to_sentence})
    end
  end
end
