module AngularRailsEngine
  module ActionViewExtensions
    ANGULAR_VERSION = '1.2.13'
    OFFLINE = (::Rails.env.development? or ::Rails.env.test?)

    CDNS = {
      :angular_js => {
        :default => "//ajax.googleapis.com/ajax/libs/angularjs/#{ANGULAR_VERSION}/angular.min.js"
      }
    }

    def angular_js_url(name)
      return CDNS[:angular_js][name]
    end

    def angular_js_include_tag(name, options = {})
      options.reverse_merge! :local_copy => false

      angularjs = 'angular/angular'
      angularjs = angularjs+'.min' if options.delete(:compressed)

      if OFFLINE and !options.delete(:force)
        options.delete(:local_copy) # not used in OFFLINE mode
        return javascript_include_tag(angularjs, options)
      else
        local_copy = options.delete(:local_copy)
        j = [ javascript_include_tag(angular_js_url(name), options) ]
        if local_copy
          j << javascript_tag("window.angular || document.write(unescape('#{javascript_include_tag(angularjs, options).gsub('<','%3C')}'))")
        end
        j.join("\n").html_safe
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
