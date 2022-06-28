json.extract! ban, :id, :ip, :country, :ts, :port, :jail, :username, :uri, :method, :user_agent, :created_at, :updated_at
json.url ban_url(ban, format: :json)
