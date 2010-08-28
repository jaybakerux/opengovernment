class View
  include MongoMapper::Document
  key :created_at
  key :user_id
  belongs_to :page
  scope :since, lambda {|date| where(:created_at.gte => date)}
end