module AngularRailsEngine
  module ActionViewExtensions
    OFFLINE = (::Rails.env.development? or ::Rails.env.test?)

    CDNS = {
      :angular_js => {
        :default => "//ajax.googleapis.com/ajax/libs/angularjs/1.0.2/angular.min.js"
      }
    }

    def angular_js_url(name, options = {})
      return CDNS[:angular_js][name]
    end

    def angular_js_include_tag(name, options = {})
      if OFFLINE and !options[:force]
        return javascript_include_tag('angular/angular')
      else
        [ javascript_include_tag(angular_js_url(name, options)),
          javascript_tag("window.angular || document.write(unescape('#{javascript_include_tag('angular/angular').gsub('<','%3C')}'))")
        ].join("\n").html_safe
      end
    end
  end


  class Engine < ::Rails::Engine
    initializer 'angular-rails-engine.action_view' do |app|
      ActiveSupport.on_load(:action_view) do
        include AngularRailsEngine::ActionViewExtensions
      end
    end
  end
end
