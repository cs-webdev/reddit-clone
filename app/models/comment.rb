class Comment < ActiveRecord::Base
  belongs_to :post
  after_initialize :set_default_values

  private

  def set_default_values
    self.upvotes ||= 0
    self.downvotes ||= 0
  end
end
