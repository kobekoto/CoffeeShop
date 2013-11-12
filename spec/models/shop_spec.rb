# == Schema Information
#
# Table name: shops
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  latitude          :float
#  longitude         :float
#  phone             :string(255)
#  startAt           :integer
#  endAt             :integer
#  votes             :integer
#  twitter           :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#  neighborhood_id   :integer
#  cafe_id           :string(255)
#  url               :string(255)
#  hours             :string(255)
#  foursquare_rating :float
#

require 'spec_helper'

describe Shop do
  pending "add some examples to (or delete) #{__FILE__}"
end
