class Poll < ActiveRecord::Base
  attr_accessible :edit_url, :title
  before_create :create_url

  private
  def create_url
    self.edit_url = rand_url
  end
  
  def rand_url
    SecureRandom.urlsafe_base64(8)
  end
end
