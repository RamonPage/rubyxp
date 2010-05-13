ActionController::Routing::Routes.draw do |map|

  map.root :controller => 'home', :action => 'new'

  map.connect '/go/createlang', :controller => 'home', :action => 'create_lang'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
