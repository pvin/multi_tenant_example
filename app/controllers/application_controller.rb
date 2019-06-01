class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  set_current_tenant_through_filter
  before_action :current_tenant_from_subdomain

  def current_tenant_from_subdomain
    tenant = Author.find_by subdomain: request.subdomains.first
    set_current_tenant(tenant)
  end

end
