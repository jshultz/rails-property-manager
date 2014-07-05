class Ticket < ActiveRecord::Base
  belongs_to :property
  belongs_to :user
  has_many :ticket_comments
end
