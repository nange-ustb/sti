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
class ShelfSetItemVideo < Asset
  validates :alt, presence: true,allow_blank: false
  validates :url, :format => { :with => /[a-zA-z]+:\/\/[^\s]*/  ,
                               :message => "请填写正确的CC视频地址"} , :presence => true
  validates :title, presence: true,allow_blank: false
  mount_uploader :alt, ShelfSetItemVideoImageUploader
end
