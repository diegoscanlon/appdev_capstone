Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  # get("/your_first_screen", { :controller => "pages", :action => "first" })
  get("/", { :controller => "plan", :action => "index"})
  get("/plan", { :controller => "plan", :action => "plan"})
  post("share_plan", {:controller => "plan", :action => "create"})
end
