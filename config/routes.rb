Rails.application.routes.draw do
  get("/", { :controller => "main", :action => "square_new" })
  get("payment/new", { :controller => "main", :action => "payment_new" })
  get("payment/results", { :controller => "main", :action => "payment_results" })
  get("random/new", { :controller => "main", :action => "random_new" })
  get("random/results", { :controller => "main", :action => "random_results" })
  get("square/new", { :controller => "main", :action => "square_new" })
  get("square/results", { :controller => "main", :action => "square_results" })
  get("square_root/new", { :controller => "main", :action => "square_root_new" })
  get("square_root/results", { :controller => "main", :action => "square_root_results" })
end
