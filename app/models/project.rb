# http://guides.rubyonrails.org/active_record_querying.html
class Project < ActiveRecord::Base

  has_many :roles,  :dependent => :destroy
  has_many :people, :through => :roles

  validates :title, :presence => true
  
  scope :all_lazy, select('*')
  scope :find_lazy, lambda {|id| where(primary_key => id) }
  
end
