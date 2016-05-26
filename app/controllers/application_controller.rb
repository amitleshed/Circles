class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?


  private

  def call_rake(task, options = {})
	  options[:rails_env] = Rails.env
 	  args = options.map { |n, v| "#{n.to_s.upcase}='#{v}'" }
 	  system "/usr/bin/rake #{task} #{args.join(' ')} --trace >> #{Rails.root}/log/rake.log &"
  end

	protected
	  def configure_permitted_parameters
	    devise_parameter_sanitizer.for(:sign_up) << [:first_name, :last_name, :full_name]
		devise_parameter_sanitizer.for(:account_update) << [:first_name, :last_name, :city, :state, :full_name]
		
	  end
end
