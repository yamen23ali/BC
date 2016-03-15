class Asset < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  belongs_to :status
  has_many :asset_data , :dependent => :destroy
  has_many :review
  has_many :offer_asset
  has_many :offer , :through => :offer_asset

  validates :user, :presence => true
  validates :category, :presence => true

  accepts_nested_attributes_for :asset_data , :reject_if => :reject_asset_data , :allow_destroy => true

  before_save :default_values

  acts_as_taggable

  def default_values
    self.status_id |= 1
    self.sub_category_id = nil if self.sub_category_id == 0
  end

  def reject_asset_data(attributes)
    attributes['descriptor_id'].blank? && attributes['photo'].blank?
  end

  def descriptors
    asset_data.select {|data| !data.descriptor.nil? }
  end

  def photos
    asset_data.select {|data| data.descriptor.nil? }
  end

  def title
    extract_descriptors( 1, 'No title')
  end

  def author
    extract_descriptors( 2, '-')
  end

  def edition
    extract_descriptors( 3, '-')
  end

  def language
    extract_descriptors( 4, '-')
  end

  def extract_descriptors( id, message )
    extracted_descriptors = asset_data.select {|data| !data.descriptor.nil? &&  data.descriptor.id == id }
    extracted_descriptors.empty? ? message : extracted_descriptors[0].descriptor_value
  end

end
