class User
  include Dynamoid::Document

  ROLES = %w(admin editor normal new subscriber)

  field :email, :string
  field :name, :string
  field :image_url, :string
  field :role, :string, default: "new"
  field :active, :boolean, default: true
  field :uid, :string
  field :guid, :string
  field :subscription_expired_at, :datetime

  ## Validations
  begin
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates :name, presence: true, length: { maximum: 30 }
    validates :role, inclusion: { in: ROLES }
  end

  ROLES.each do |rl|
    class_eval <<-RUBY_EVAL
      def #{rl}?
        role == "#{rl}"
      end
    RUBY_EVAL
  end
end