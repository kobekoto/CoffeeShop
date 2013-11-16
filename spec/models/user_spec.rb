# == Schema Information
#
# Table name: users
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  email               :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  password_digest     :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  remember_token      :string(255)
#  address             :string(255)
#  latitude            :float
#  longitude           :float
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
