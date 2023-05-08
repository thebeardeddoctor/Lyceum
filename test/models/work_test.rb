# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  body        :text
#  description :text
#  goal        :string
#  specialty   :string
#  timeline    :integer
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_works_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class WorkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
