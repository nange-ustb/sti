# -*- encoding : utf-8 -*-
# == Schema Information
#
# Table name: assets
#
#  id                      :integer          not null, primary key
#  viewable_id             :integer
#  viewable_type           :string(255)
#  attachment_width        :integer
#  attachment_height       :integer
#  attachment_file_size    :integer
#  position                :integer
#  attachment_content_type :string(255)
#  attachment_file_name    :string(255)
#  type                    :string(75)
#  attachment_updated_at   :datetime
#  alt                     :text
#  url                     :string(255)
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  title                   :string(255)
#

# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
# -*- encoding : utf-8 -*-
class Asset < ActiveRecord::Base
  include UpdatePosition
  belongs_to :viewable, polymorphic: true
  acts_as_list scope: :viewable

  attr_accessible :alt,:url,:viewable_id,:viewable_type,:position,:type,:remote_url_url,:title
  validates :url, presence: true,allow_blank: false,:on=>:create
end
