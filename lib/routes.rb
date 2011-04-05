module Pulse
  module Routes
    def pulse(path)
      if Rails.version >= "3.0.0"
        match path, :controller => 'pulse', :action => 'pulse'
      else
        connect path, :controller => 'pulse', :action => 'pulse'
      end
    end
  end
end

if Rails.version >= "3.0.0"
  ActionDispatch::Routing::Mapper.send :include, Pulse::Routes
else
  ActionController::Routing::RouteSet::Mapper.send :include, Pulse::Routes
end
