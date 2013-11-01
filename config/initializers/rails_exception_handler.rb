RailsExceptionHandler.configure do |config|
  config.environments = [:development, :test, :staging, :production]        # Defaults to [:production]
  # config.fallback_layout = 'home'                                         # Defaults to 'application'
  # config.after_initialize do
  #   # This block will be called after the initialization is done.
  #   # Usefull for interaction with authentication mechanisms, which should
  #   # only happen when the exception handler is enabled.
  # end
  config.filters = [                                                      # No filters are  enabled by default
     :all_404s,
     :no_referer_404s,
     :anon_404s,
     {:user_agent_regxp => /\b(ApptusBot|TurnitinBot|DotBot|SiteBot)\b/i}
     #{:target_url_regxp => /\.php/i},
     #{:referer_url_regxp => /problematicreferer/i}
  ]
  #
  # !!! IMPORTANT !!!
  # You must remove public/500.html and public/404.html for these to have any effect
  config.responses = {
    :default => '<div class="error-page"><h1>We\'re Sorry...</h1><p>Unfortunately we are experiencing an issue with the action you just attempted. An email has been sent to our technical team and they are working on a solution right now.</p><p class="error-detail">500 HTTP Internal Server Error</p></div>',
    :not_found => '<div class="error-page"><h1>We\'re Sorry...</h1><p>The page you are requesting could not be found.</p><p class="error-detail">404 HTTP Page Not Found</p></div>'
  }
  config.response_mapping = {                                             # All errors are mapped to the :default response unless overridden here
    'ActiveRecord::RecordNotFound' => :not_found,
    'ActionController::RoutingError' => :not_found,
    'AbstractController::ActionNotFound' => :not_found,
    'ActionView::MissingTemplate' => :not_found
  }

  config.storage_strategies = [:active_record, :rails_log] # Available options: [:active_record, :rails_log, :remote_url => {:target => 'http://example.com'}]
  config.store_request_info do |storage,request|
    storage[:target_url]    =  request.url
    storage[:referer_url]   =  request.referer
    storage[:params]        =  request.params.inspect
    storage[:user_agent]    =  request.user_agent
  end

  config.store_exception_info do |storage,exception|
    storage[:class_name]    =  exception.class.to_s
    storage[:message]       =  exception.to_s
    storage[:trace]         =  exception.backtrace.join("\n")
  end

  config.store_environment_info do |storage,env|
    storage[:doc_root] =      env['DOCUMENT_ROOT']
  end

  config.store_global_info do |storage|
    storage[:app_name] =     Rails.application.class.parent_name
    storage[:created_at] =   Time.now
  end
  config.store_user_info = {:method => :spree_current_user, :field => :email} # Helper method for easier access to current_user
end
