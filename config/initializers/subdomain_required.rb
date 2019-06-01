class SubdomainRequired
  def self.matches?(request)
    subdomain = request.subdomains.first
    tenant = Author.find_by subdomain: subdomain
    subdomain.present? && subdomain != 'www' && tenant
  end
end
