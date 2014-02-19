class Quote < ActiveRecord::Base
  validates :text, :author, presence: true
end
