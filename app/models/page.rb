class Page
  include Dynamoid::Document
  include Deleteable


  field :book_id, :string
  field :num, :integer
  field :lines, :raw
  field :image_url, :string
  field :width, :number
  field :height, :number
  field :auto_reorder_lines, :boolean, default: true
end