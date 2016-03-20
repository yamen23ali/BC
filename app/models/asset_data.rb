class AssetData < ActiveRecord::Base
  belongs_to :asset
  belongs_to :descriptor

  has_attached_file :photo, styles: { medium: "200x200>", thumb: "100x100>", grid: "150x150>" }, default_url: "mine/missing100.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/


  def title
  	( self.descriptor.id == 1 ) ? self.descriptor_value : nil
  end
  
end
