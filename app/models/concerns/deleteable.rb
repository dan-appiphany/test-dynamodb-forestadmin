module Deleteable
  extend ActiveSupport::Concern
  
  included do
    field :deleted, :boolean, default: false
    field :deleted_at, :datetime

  end

  def delete!
    self.deleted = true
    self.deleted_at = Time.now.utc
    self.save
  end
end