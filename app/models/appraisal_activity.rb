class AppraisalActivity < ActiveRecord::Base
  validates_inclusion_of    :activity_type,  :in => (EActivityTypeAdmin..EActivityTypeUnknown)
  validates_inclusion_of    :activity_value, :in => (EActivityValueCreated..EActivityValuePayed)
  validates_numericality_of :user_id,		 :integer_only => true, :greater_than => 0
  validates_numericality_of :appraisal_id,	 :integer_only => true, :greater_than => 0
  
  has_one :appraisal
  has_one :user
  
  before_create :add_datetime

  attr_accessible :appraisal_id, :user_id, :activity_type, :activity_value
  
  def add_datetime
  	self.activity_datetime = Time.now
  end
end
