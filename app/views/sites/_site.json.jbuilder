json.extract! site, :id, :url, :title, :created_at, :updated_at
json.url site_url(site, format: :json)