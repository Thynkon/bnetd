class Ban
  include Mongoid::Document
  include Mongoid::Timestamps
  field :ip, type: String
  field :country, type: String
  field :ts, type: Time
  field :port, type: Integer
  field :jail, type: String
  field :username, type: String
  field :uri, type: String
  field :method, type: String
  field :user_agent, type: String
end
