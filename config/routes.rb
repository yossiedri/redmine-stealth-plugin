
if Rails::VERSION::MAJOR >= 3

  RedmineApp::Application.routes.draw do
    match '/stealth/toggle', :to => 'stealth#toggle'
  end

else

  ActionController::Routing::Routes.draw do |map|
    map.connect '/stealth/toggle',
      :controller => 'stealth', :action => 'toggle'
  end

end

