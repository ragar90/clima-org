class Dimension < ActiveRecord::Base
  attr_accessible :is_default, :name
  has_many :questions
  has_many :dimensio_settings
  has_many :researches, :through => :dimension_settings

  def camelize_name
  	name.camelize unless name.nil?
  end
end
