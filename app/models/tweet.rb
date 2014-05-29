class Tweet < ActiveRecord::Base
  validates :msg, presence: true
end
