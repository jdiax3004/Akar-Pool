class Trip
  include Mongoid::Document
  field :names, type: String
  field :seats, type: Integer
  field :car, type: String
  field :departure, type: String
  field :placemarks, type: String
  belongs_to :user
end
