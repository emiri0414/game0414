class ApplicationController < ActionController::Base
	Refile.secret_key = '31938154d74a07c9fe8bba2c730fcdcaded826bba2d67e29c42ec14d169e3075abc8cd69e62b745e0a102e14433fa55f632faa8cdb9a31c78b53b010136acfa8'
	before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :nickname])
  end
end
