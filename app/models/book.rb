class Book
  include Dynamoid::Document
  include Deleteable

  STATUSES = ["processing", "new", "test", "published", "hidden"]

  field :title, :string
  field :cover_url, :string
  field :file_url, :string
  field :spine, :boolean, default: false
  field :first_content_page, :integer, default: 2
  field :pages_count, :integer
  field :status, :string, default: "processing"
  field :font_size, :integer
  field :width, :number
  field :height, :number
  field :level, :integer
  field :spelling, :string, default: "Both"
  field :fiction, :boolean, default: false
  field :file_updated_at, :datetime

  ## Validations
  begin
    validates :title, presence: true
  end
end