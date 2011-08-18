class Role < ActiveRecord::Base

  belongs_to :project
  belongs_to :person
  belongs_to :status
  
  validates :project_id, :presence => true
  validates :person_id,  :presence => true
  validates :status_id,  :presence => true
  validates :title,      :presence => true
  
  attr_protected :project_id

  default_scope order("updated_at DESC")
    
end
