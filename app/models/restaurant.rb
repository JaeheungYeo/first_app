# == Schema Information
#
# Table name: restaurants
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  longitude          :float
#  latitude           :float
#  rating             :float
#  created_at         :datetime
#  updated_at         :datetime
#  reference          :string(255)
#  device_id          :string(255)
#  device_description :string(255)
#

class Restaurant < ActiveRecord::Base
  #attr_accessible :name, :longitude, :latitude, :rating
  has_many :visit

end
